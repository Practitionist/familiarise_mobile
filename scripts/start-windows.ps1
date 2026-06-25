<#
.SYNOPSIS
Starts the Familiarise application on Windows.
#>

$ErrorActionPreference = "Stop"

# Get the script directory and navigate to the project root
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location "$scriptDir\.."

Write-Host "=== Killing processes on port 8080 ===" -ForegroundColor Cyan
$port8080Pids = (Get-NetTCPConnection -LocalPort 8080 -ErrorAction SilentlyContinue).OwningProcess
if ($port8080Pids) {
    foreach ($pidToKill in $port8080Pids) {
        Stop-Process -Id $pidToKill -Force -ErrorAction SilentlyContinue
        Write-Host "Killed process $pidToKill on port 8080"
    }
}

Write-Host "=== Cleaning Flutter build ===" -ForegroundColor Cyan
flutter clean

Write-Host "=== Getting dependencies ===" -ForegroundColor Cyan
flutter pub get

Write-Host "=== Regenerating code ===" -ForegroundColor Cyan
dart run build_runner build --delete-conflicting-outputs

Write-Host "=== Building backend ===" -ForegroundColor Cyan
Set-Location backend

if (-not (Test-Path ".env")) {
    Write-Host "WARNING: backend/.env not found! Copying .env.example to .env..." -ForegroundColor Yellow
    Copy-Item ".env.example" ".env"
    Write-Host "Please make sure to fill in your database credentials in backend/.env if needed." -ForegroundColor Yellow
}

dart pub global run dart_frog_cli:dart_frog build

Write-Host "=== Starting backend server ===" -ForegroundColor Cyan
$env:PORT = "8080"
Start-Process dart -ArgumentList "build/bin/server.dart" -NoNewWindow
Set-Location ..

Write-Host "=== Waiting for backend to start ===" -ForegroundColor Cyan
Start-Sleep -Seconds 3

$adbExe = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
$deviceConnected = $false

if (Test-Path $adbExe) {
    $devices = & $adbExe devices
    $connectedDevices = $devices | Where-Object { $_ -match '\bdevice$' }
    if ($connectedDevices) {
        $deviceConnected = $true
        Write-Host "=== Device already connected ===" -ForegroundColor Green
        Write-Host "Skipping emulator launch."
    }
}

if (-not $deviceConnected) {
    Write-Host "=== Starting Android emulator ===" -ForegroundColor Cyan
    $emulatorExe = "$env:LOCALAPPDATA\Android\Sdk\emulator\emulator.exe"
    if (Test-Path $emulatorExe) {
        # You can change Pixel_10 to whatever your emulator AVD name is
        Write-Host "Starting Pixel_10 emulator..."
        Start-Process $emulatorExe -ArgumentList "-avd Pixel_10" -NoNewWindow
        
        Write-Host "=== Waiting for emulator to boot ===" -ForegroundColor Cyan
        if (Test-Path $adbExe) {
            & $adbExe wait-for-device
            Start-Sleep -Seconds 5
        }
    } else {
        Write-Host "Could not find emulator at $emulatorExe. Please ensure an emulator is running." -ForegroundColor Yellow
    }
}

if (Test-Path $adbExe) {
    Write-Host "=== Setting up port forwarding ===" -ForegroundColor Cyan
    & $adbExe reverse tcp:8080 tcp:8080
} else {
    Write-Host "Could not find adb at $adbExe. Skipping port forwarding." -ForegroundColor Yellow
}

Write-Host "=== Running Flutter app ===" -ForegroundColor Cyan

# Try to find a connected physical Android device ID
$targetDevice = $null
if (Test-Path $adbExe) {
    $adbDevices = & $adbExe devices | Select-Object -Skip 1
    $physicalDevice = $adbDevices | Where-Object { $_ -match '\bdevice$' } | Select-Object -First 1
    if ($physicalDevice) {
        $targetDevice = ($physicalDevice -split '\s+')[0]
        Write-Host "Targeting device: $targetDevice" -ForegroundColor Green
    }
}

if ($targetDevice) {
    flutter run -d $targetDevice
} else {
    flutter run
}
