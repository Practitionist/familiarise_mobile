<#
.SYNOPSIS
Starts the Familiarise application on Windows (full rebuild).

.DESCRIPTION
Mirrors scripts/start-android.sh for Windows/PowerShell:
  1. Frees port 8080
  2. Cleans + rebuilds Flutter and regenerates code
  3. Builds and starts the Dart Frog backend
  4. Ensures an Android device/emulator is available, sets up adb reverse
  5. Runs the Flutter app on the target device

.PARAMETER Port
Backend port (default 8080).

.PARAMETER Avd
Android Virtual Device name to launch when no device is connected (default Pixel_10).

.EXAMPLE
.\scripts\start-windows.ps1 -Avd Pixel_7_API_34
#>
param(
    [int]$Port = 8080,
    [string]$Avd = "Pixel_10"
)

$ErrorActionPreference = "Stop"

# Resolve project root from the script location and move there.
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Resolve-Path "$scriptDir\.."
Set-Location $projectRoot

# Android SDK tool locations.
$sdkRoot     = Join-Path $env:LOCALAPPDATA "Android\Sdk"
$adbExe      = Join-Path $sdkRoot "platform-tools\adb.exe"
$emulatorExe = Join-Path $sdkRoot "emulator\emulator.exe"

# --- Helpers -----------------------------------------------------------------

# Returns the id of the first fully-booted ("device" state) Android device,
# or $null if none are attached. Skips the "List of devices attached" header.
function Get-ConnectedAndroidDevice {
    if (-not (Test-Path $adbExe)) { return $null }
    $line = & $adbExe devices |
        Select-Object -Skip 1 |
        Where-Object { $_ -match '\bdevice$' } |
        Select-Object -First 1
    if ($line) { return ($line -split '\s+')[0] }
    return $null
}

# Blocks until $Port accepts a TCP connection or the timeout elapses.
function Wait-ForPort {
    param([int]$PortNumber, [int]$TimeoutSeconds = 30)
    $deadline = (Get-Date).AddSeconds($TimeoutSeconds)
    while ((Get-Date) -lt $deadline) {
        if (Test-NetConnection -ComputerName "localhost" -Port $PortNumber -WarningAction SilentlyContinue -InformationLevel Quiet) {
            return $true
        }
        Start-Sleep -Milliseconds 500
    }
    return $false
}

# --- Free the backend port ---------------------------------------------------

Write-Host "=== Killing processes on port $Port ===" -ForegroundColor Cyan
$portPids = (Get-NetTCPConnection -LocalPort $Port -ErrorAction SilentlyContinue).OwningProcess |
    Sort-Object -Unique
foreach ($pidToKill in $portPids) {
    Stop-Process -Id $pidToKill -Force -ErrorAction SilentlyContinue
    Write-Host "Killed process $pidToKill on port $Port"
}

# --- Flutter clean + codegen -------------------------------------------------

Write-Host "=== Cleaning Flutter build ===" -ForegroundColor Cyan
flutter clean

Write-Host "=== Getting dependencies ===" -ForegroundColor Cyan
flutter pub get

Write-Host "=== Regenerating code ===" -ForegroundColor Cyan
dart run build_runner build --delete-conflicting-outputs

# --- Backend build -----------------------------------------------------------

Write-Host "=== Building backend ===" -ForegroundColor Cyan
Push-Location backend
try {
    if (-not (Test-Path ".env")) {
        Write-Host "WARNING: backend/.env not found! Copying .env.example to .env..." -ForegroundColor Yellow
        Copy-Item ".env.example" ".env"
        Write-Host "Please make sure to fill in your database credentials in backend/.env if needed." -ForegroundColor Yellow
    }

    dart pub get
    dart pub global run dart_frog_cli:dart_frog build

    Write-Host "=== Starting backend server ===" -ForegroundColor Cyan
    # Set PORT for the child process (inherited from this session), then restore
    # it so the variable doesn't leak. Avoids Start-Process -Environment, which
    # requires PowerShell 7.4+ (Windows ships 5.1 by default).
    $prevPort = $env:PORT
    $env:PORT = "$Port"
    try {
        $serverProc = Start-Process dart `
            -ArgumentList "build/bin/server.dart" `
            -NoNewWindow -PassThru
    }
    finally {
        $env:PORT = $prevPort
    }
    Write-Host "Backend server started (PID $($serverProc.Id))"
}
finally {
    Pop-Location
}

Write-Host "=== Waiting for backend to start ===" -ForegroundColor Cyan
if (-not (Wait-ForPort -PortNumber $Port)) {
    Write-Host "Backend did not start listening on port $Port in time." -ForegroundColor Red
    exit 1
}
Write-Host "Backend is up on port $Port." -ForegroundColor Green

# --- Ensure an Android device is available -----------------------------------

$targetDevice = Get-ConnectedAndroidDevice

if ($targetDevice) {
    Write-Host "=== Device already connected ($targetDevice) ===" -ForegroundColor Green
    Write-Host "Skipping emulator launch."
} else {
    Write-Host "=== Starting Android emulator ===" -ForegroundColor Cyan
    if (Test-Path $emulatorExe) {
        Write-Host "Starting $Avd emulator..."
        Start-Process $emulatorExe -ArgumentList "-avd", $Avd -NoNewWindow

        Write-Host "=== Waiting for emulator to boot ===" -ForegroundColor Cyan
        if (Test-Path $adbExe) {
            & $adbExe wait-for-device
            Start-Sleep -Seconds 5
            $targetDevice = Get-ConnectedAndroidDevice
        }
    } else {
        Write-Host "Could not find emulator at $emulatorExe. Please ensure an emulator is running." -ForegroundColor Yellow
    }
}

# --- Port forwarding ---------------------------------------------------------

if ($targetDevice) {
    Write-Host "=== Setting up port forwarding ===" -ForegroundColor Cyan
    & $adbExe -s $targetDevice reverse "tcp:$Port" "tcp:$Port"
} else {
    Write-Host "No Android device detected. Skipping port forwarding." -ForegroundColor Yellow
}

# --- Run the app -------------------------------------------------------------

Write-Host "=== Running Flutter app ===" -ForegroundColor Cyan
if ($targetDevice) {
    Write-Host "Targeting device: $targetDevice" -ForegroundColor Green
    flutter run -d $targetDevice
} else {
    flutter run
}
