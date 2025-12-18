# Scalable Cross-Platform Architecture Guide

## Introduction

This guide explains how to build a massively scalable application—like Swiggy, Zomato, Uber, Netflix, or LinkedIn—that can handle millions of users, race conditions during bookings, and cross-platform synchronization between mobile and web applications.

**Who is this for?**
- Developers who want to understand scalability patterns
- Teams building booking/reservation systems
- Anyone preparing for high-traffic scenarios

**What you'll learn:**
- How to prevent double-bookings when thousands of users try to book simultaneously
- Database strategies that scale from 100 to 1,000,000 users
- Caching and queuing patterns used by top tech companies
- How to keep mobile and web apps in sync
- What to do when things go wrong (and they will)

---

## Table of Contents

1. [The Problem: Why Scalability is Hard](#1-the-problem-why-scalability-is-hard)
2. [Race Conditions: The Core Challenge](#2-race-conditions-the-core-challenge)
3. [Booking Scenarios Deep Dive](#3-booking-scenarios-deep-dive)
4. [Database Scaling Strategies](#4-database-scaling-strategies)
5. [Caching Strategies](#5-caching-strategies)
6. [Message Queues & Async Processing](#6-message-queues--async-processing)
7. [High Availability & Fault Tolerance](#7-high-availability--fault-tolerance)
8. [Cross-Platform Consistency](#8-cross-platform-consistency)
9. [Monitoring & Observability](#9-monitoring--observability)
10. [Infrastructure Options Comparison](#10-infrastructure-options-comparison)
11. [Schema Recommendations](#11-schema-recommendations)
12. [Implementation Roadmap](#12-implementation-roadmap)

---

## 1. The Problem: Why Scalability is Hard

### Real-World Scenarios

Imagine these situations:

**Scenario 1: Concert Ticket Sale (BookMyShow)**
- 50,000 users hit "Buy Now" at exactly 10:00 AM
- Only 1,000 seats available
- Without proper handling: 5,000 users might see "Success!" but only 1,000 actually get tickets

**Scenario 2: Food Delivery (Swiggy/Zomato)**
- Restaurant has 10 delivery slots for 7-8 PM
- 50 users order at 6:55 PM
- Without proper handling: 50 orders confirmed, restaurant can only fulfill 10

**Scenario 3: Ride Sharing (Uber/Ola)**
- 100 riders request a cab in the same area
- Only 20 drivers available
- Without proper handling: Same driver assigned to 5 different riders

**Scenario 4: Consultation Booking (Your App)**
- Popular consultant has 1 slot at 3 PM
- 10 users click "Book" within 100 milliseconds
- Without proper handling: 10 bookings created, consultant has 10 meetings at same time

### The Core Challenges

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        SCALABILITY CHALLENGES                                │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  1. RACE CONDITIONS          2. DATABASE BOTTLENECK                         │
│     Multiple users              Single database can't                       │
│     competing for               handle 100K queries/sec                     │
│     same resource                                                           │
│                                                                              │
│  3. NETWORK FAILURES         4. CROSS-PLATFORM SYNC                         │
│     User clicks "Book"          Mobile user books,                          │
│     twice due to slow            web user sees stale                        │
│     response                     availability                               │
│                                                                              │
│  5. CASCADING FAILURES       6. INCONSISTENT STATE                          │
│     One service down            Payment succeeds but                        │
│     brings everything           booking fails                               │
│     down                                                                    │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 2. Race Conditions: The Core Challenge

### What is a Race Condition?

A race condition occurs when two or more operations try to modify the same data simultaneously, and the final result depends on the timing of execution.

### The Problem Visualized

```mermaid
sequenceDiagram
    participant User1 as User A (Mobile)
    participant User2 as User B (Web)
    participant API as Backend API
    participant DB as Database

    Note over User1,DB: Both users try to book 3PM slot simultaneously

    User1->>API: Check if 3PM available?
    User2->>API: Check if 3PM available?

    API->>DB: SELECT * FROM slots WHERE time='3PM'
    API->>DB: SELECT * FROM slots WHERE time='3PM'

    DB-->>API: Slot is available (status='open')
    DB-->>API: Slot is available (status='open')

    API-->>User1: Yes, available!
    API-->>User2: Yes, available!

    User1->>API: Book 3PM slot
    User2->>API: Book 3PM slot

    API->>DB: UPDATE slots SET status='booked', user='A'
    API->>DB: UPDATE slots SET status='booked', user='B'

    Note over DB: PROBLEM: Both updates succeed!
    Note over DB: Last write wins - User B gets slot
    Note over DB: User A thinks they have booking but doesn't!
```

### Solution Pattern 1: Optimistic Locking

**How it works:** Add a `version` number to each row. When updating, check that the version hasn't changed since you read it.

**Best for:** Low contention scenarios (few concurrent updates to same resource)

#### Schema Addition (Prisma)

```prisma
model SlotOfAppointment {
  id          String   @id @default(cuid())
  startsAt    DateTime
  endsAt      DateTime
  status      SlotStatus @default(AVAILABLE)
  bookedById  String?
  version     Int      @default(0)  // Add this field

  @@map("slot_of_appointments")
}
```

#### Dart Frog Implementation

```dart
/// Optimistic locking for slot booking
class SlotBookingService {
  final DatabaseClient _db;

  Future<BookingResult> bookSlotOptimistic({
    required String slotId,
    required String userId,
  }) async {
    // Step 1: Read current slot with version
    final slot = await _db.findSlotById(slotId);

    if (slot == null) {
      return BookingResult.failure('Slot not found');
    }

    if (slot['status'] != 'AVAILABLE') {
      return BookingResult.failure('Slot no longer available');
    }

    final currentVersion = slot['version'] as int;

    // Step 2: Try to update with version check
    final updated = await _db.query('''
      UPDATE slot_of_appointments
      SET
        status = 'BOOKED',
        booked_by_id = @userId,
        version = version + 1,
        updated_at = NOW()
      WHERE
        id = @slotId
        AND version = @currentVersion  -- This is the key!
        AND status = 'AVAILABLE'
      RETURNING id
    ''', {
      'slotId': slotId,
      'userId': userId,
      'currentVersion': currentVersion,
    });

    // Step 3: Check if update succeeded
    if (updated.isEmpty) {
      // Version changed = someone else booked it
      return BookingResult.failure(
        'Slot was booked by someone else. Please try another slot.',
      );
    }

    return BookingResult.success(slotId);
  }
}
```

#### How It Prevents Double Booking

```mermaid
sequenceDiagram
    participant User1 as User A
    participant User2 as User B
    participant DB as Database

    Note over DB: Slot version = 0, status = AVAILABLE

    User1->>DB: SELECT (gets version=0)
    User2->>DB: SELECT (gets version=0)

    User1->>DB: UPDATE WHERE version=0
    Note over DB: Success! Version now = 1
    DB-->>User1: 1 row updated

    User2->>DB: UPDATE WHERE version=0
    Note over DB: Fails! Version is now 1, not 0
    DB-->>User2: 0 rows updated

    Note over User2: User B sees "Slot no longer available"
```

---

### Solution Pattern 2: Pessimistic Locking (SELECT FOR UPDATE)

**How it works:** Lock the row when reading it, preventing others from reading until you're done.

**Best for:** High contention scenarios (many users competing for same resource)

#### Dart Frog Implementation

```dart
/// Pessimistic locking using PostgreSQL FOR UPDATE
class SlotBookingService {
  final DatabaseClient _db;

  Future<BookingResult> bookSlotPessimistic({
    required String slotId,
    required String userId,
  }) async {
    // Use a transaction to hold the lock
    return await _db.transaction((tx) async {
      // Step 1: Lock the row - no one else can read it until we commit
      final slots = await tx.query('''
        SELECT id, status, booked_by_id
        FROM slot_of_appointments
        WHERE id = @slotId
        FOR UPDATE  -- This locks the row!
      ''', {'slotId': slotId});

      if (slots.isEmpty) {
        return BookingResult.failure('Slot not found');
      }

      final slot = slots.first;

      if (slot['status'] != 'AVAILABLE') {
        // Release lock by ending transaction
        return BookingResult.failure('Slot no longer available');
      }

      // Step 2: Update the slot (still holding the lock)
      await tx.query('''
        UPDATE slot_of_appointments
        SET
          status = 'BOOKED',
          booked_by_id = @userId,
          updated_at = NOW()
        WHERE id = @slotId
      ''', {
        'slotId': slotId,
        'userId': userId,
      });

      // Step 3: Transaction commits, lock released
      return BookingResult.success(slotId);
    });
  }
}
```

#### What Happens with Pessimistic Locking

```mermaid
sequenceDiagram
    participant User1 as User A
    participant User2 as User B
    participant DB as Database

    User1->>DB: BEGIN TRANSACTION
    User1->>DB: SELECT ... FOR UPDATE
    Note over DB: Row LOCKED by User A

    User2->>DB: BEGIN TRANSACTION
    User2->>DB: SELECT ... FOR UPDATE
    Note over User2: User B WAITS (blocked)

    User1->>DB: UPDATE status='BOOKED'
    User1->>DB: COMMIT
    Note over DB: Lock RELEASED

    Note over User2: User B unblocked, gets row
    DB-->>User2: status='BOOKED' (already taken!)
    User2->>DB: ROLLBACK

    Note over User2: User B sees "Slot taken"
```

#### Preventing Deadlocks and Timeouts

```dart
/// Safe pessimistic locking with timeout
Future<BookingResult> bookSlotWithTimeout({
  required String slotId,
  required String userId,
}) async {
  return await _db.transaction((tx) async {
    // Set a lock timeout to prevent infinite waiting
    await tx.query("SET LOCAL lock_timeout = '5s'");

    try {
      // NOWAIT variant: fail immediately instead of waiting
      final slots = await tx.query('''
        SELECT id, status
        FROM slot_of_appointments
        WHERE id = @slotId
        FOR UPDATE NOWAIT  -- Fail immediately if locked
      ''', {'slotId': slotId});

      // ... rest of booking logic

    } on PostgreSQLException catch (e) {
      if (e.code == '55P03') {
        // Lock not available
        return BookingResult.failure(
          'Slot is being booked by someone else. Please try again.',
        );
      }
      rethrow;
    }
  });
}
```

---

### Solution Pattern 3: Distributed Locks (Redis)

**How it works:** Use Redis as a central lock manager across multiple servers.

**Best for:**
- Multiple backend instances
- Microservices architecture
- Cross-service coordination

#### When You Need Distributed Locks

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        MULTIPLE SERVER SCENARIO                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   User A ──────► Server 1 ──┐                                               │
│                             │                                               │
│   User B ──────► Server 2 ──┼──────► Database                               │
│                             │                                               │
│   User C ──────► Server 3 ──┘                                               │
│                                                                              │
│   Problem: Database locks work, but each server has its own                 │
│            connection pool. Redis provides a SHARED lock.                   │
│                                                                              │
│   User A ──────► Server 1 ──┐         ┌──────┐                              │
│                             ├────────►│ Redis │◄── Central Lock             │
│   User B ──────► Server 2 ──┤         └──────┘     Manager                  │
│                             │              │                                 │
│   User C ──────► Server 3 ──┘              ▼                                │
│                                       Database                              │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### Dart Implementation

```dart
import 'package:redis/redis.dart';

/// Redis-based distributed lock
class DistributedLock {
  final RedisConnection _redis;

  DistributedLock(this._redis);

  /// Acquire a lock with automatic expiry
  /// Returns lock token if acquired, null if lock is held by someone else
  Future<String?> acquireLock({
    required String resource,
    Duration ttl = const Duration(seconds: 30),
  }) async {
    final command = await _redis.open();
    final lockKey = 'lock:$resource';
    final lockToken = _generateToken();

    // SET NX = Set if Not eXists
    // PX = expiry in milliseconds
    final result = await command.send([
      'SET',
      lockKey,
      lockToken,
      'NX',           // Only set if doesn't exist
      'PX',           // Set expiry in milliseconds
      ttl.inMilliseconds.toString(),
    ]);

    if (result == 'OK') {
      return lockToken;  // Lock acquired!
    }
    return null;  // Lock held by someone else
  }

  /// Release the lock (only if we own it)
  Future<bool> releaseLock({
    required String resource,
    required String lockToken,
  }) async {
    final command = await _redis.open();
    final lockKey = 'lock:$resource';

    // Lua script to atomically check and delete
    // This prevents releasing someone else's lock
    const luaScript = '''
      if redis.call("GET", KEYS[1]) == ARGV[1] then
        return redis.call("DEL", KEYS[1])
      else
        return 0
      end
    ''';

    final result = await command.send([
      'EVAL',
      luaScript,
      '1',
      lockKey,
      lockToken,
    ]);

    return result == 1;
  }

  String _generateToken() {
    return '${DateTime.now().microsecondsSinceEpoch}_${_randomString(8)}';
  }
}
```

#### Using Distributed Lock for Booking

```dart
class SlotBookingService {
  final DatabaseClient _db;
  final DistributedLock _lock;

  Future<BookingResult> bookSlotWithDistributedLock({
    required String slotId,
    required String userId,
  }) async {
    final lockResource = 'slot:$slotId';

    // Step 1: Acquire lock
    final lockToken = await _lock.acquireLock(
      resource: lockResource,
      ttl: const Duration(seconds: 10),
    );

    if (lockToken == null) {
      return BookingResult.failure(
        'Slot is being booked by someone else. Please try again.',
      );
    }

    try {
      // Step 2: Check availability and book
      final slot = await _db.findSlotById(slotId);

      if (slot == null || slot['status'] != 'AVAILABLE') {
        return BookingResult.failure('Slot no longer available');
      }

      await _db.updateSlot(
        slotId: slotId,
        status: 'BOOKED',
        bookedById: userId,
      );

      return BookingResult.success(slotId);

    } finally {
      // Step 3: ALWAYS release lock
      await _lock.releaseLock(
        resource: lockResource,
        lockToken: lockToken,
      );
    }
  }
}
```

---

### Solution Pattern 4: Reservation Pattern (Two-Phase Booking)

**How it works:**
1. **Phase 1 (Hold):** Temporarily reserve the resource
2. **Phase 2 (Confirm):** User completes payment/confirmation within time limit
3. **Cleanup:** Expired holds are automatically released

**Best for:**
- Booking systems with payment (Swiggy, Uber, BookMyShow)
- Where users need time to complete the transaction
- Preventing "abandoned cart" blocking inventory

#### The Two-Phase Flow

```mermaid
sequenceDiagram
    participant User as User
    participant API as Backend
    participant DB as Database
    participant Timer as Cleanup Job

    User->>API: Add to cart / Select slot
    API->>DB: Create HOLD (expires in 10 min)
    DB-->>API: Hold created
    API-->>User: Slot reserved for 10 minutes

    Note over User: User enters payment details...

    alt Payment completed in time
        User->>API: Confirm booking
        API->>DB: UPDATE status = CONFIRMED
        DB-->>API: Success
        API-->>User: Booking confirmed!
    else Payment not completed
        Timer->>DB: Find expired holds
        Timer->>DB: UPDATE status = AVAILABLE
        Note over DB: Slot released for others
    end
```

#### Schema for Two-Phase Booking

```prisma
model SlotOfAppointment {
  id            String      @id @default(cuid())
  startsAt      DateTime
  endsAt        DateTime
  consultantId  String

  // Booking state
  status        SlotStatus  @default(AVAILABLE)
  heldById      String?     // User who has temporary hold
  heldUntil     DateTime?   // When the hold expires
  bookedById    String?     // User who confirmed booking

  // For optimistic locking
  version       Int         @default(0)

  createdAt     DateTime    @default(now())
  updatedAt     DateTime    @updatedAt

  @@index([status, heldUntil])  // For cleanup queries
  @@map("slot_of_appointments")
}

enum SlotStatus {
  AVAILABLE
  HELD        // Temporarily reserved
  CONFIRMED   // Payment completed
  CANCELLED
}
```

#### Implementation

```dart
class TwoPhaseBookingService {
  final DatabaseClient _db;
  static const holdDuration = Duration(minutes: 10);

  /// Phase 1: Create a temporary hold
  Future<HoldResult> holdSlot({
    required String slotId,
    required String userId,
  }) async {
    final holdUntil = DateTime.now().add(holdDuration);

    // Use optimistic locking for the hold
    final result = await _db.query('''
      UPDATE slot_of_appointments
      SET
        status = 'HELD',
        held_by_id = @userId,
        held_until = @holdUntil,
        version = version + 1,
        updated_at = NOW()
      WHERE
        id = @slotId
        AND (
          status = 'AVAILABLE'
          OR (status = 'HELD' AND held_until < NOW())  -- Expired holds
        )
      RETURNING id, held_until
    ''', {
      'slotId': slotId,
      'userId': userId,
      'holdUntil': holdUntil,
    });

    if (result.isEmpty) {
      return HoldResult.failure('Slot is not available');
    }

    return HoldResult.success(
      slotId: slotId,
      expiresAt: holdUntil,
    );
  }

  /// Phase 2: Confirm the booking (after payment)
  Future<BookingResult> confirmBooking({
    required String slotId,
    required String userId,
    required String paymentId,
  }) async {
    final result = await _db.query('''
      UPDATE slot_of_appointments
      SET
        status = 'CONFIRMED',
        booked_by_id = @userId,
        held_by_id = NULL,
        held_until = NULL,
        version = version + 1,
        updated_at = NOW()
      WHERE
        id = @slotId
        AND status = 'HELD'
        AND held_by_id = @userId
        AND held_until > NOW()  -- Still within hold period
      RETURNING id
    ''', {
      'slotId': slotId,
      'userId': userId,
    });

    if (result.isEmpty) {
      return BookingResult.failure(
        'Your reservation expired. Please try again.',
      );
    }

    // Store payment reference
    await _db.createPaymentRecord(
      slotId: slotId,
      userId: userId,
      paymentId: paymentId,
    );

    return BookingResult.success(slotId);
  }

  /// Cleanup job: Release expired holds
  /// Run this every minute via cron/scheduler
  Future<int> releaseExpiredHolds() async {
    final result = await _db.query('''
      UPDATE slot_of_appointments
      SET
        status = 'AVAILABLE',
        held_by_id = NULL,
        held_until = NULL,
        version = version + 1,
        updated_at = NOW()
      WHERE
        status = 'HELD'
        AND held_until < NOW()
      RETURNING id
    ''');

    final releasedCount = result.length;

    if (releasedCount > 0) {
      print('Released $releasedCount expired holds');
    }

    return releasedCount;
  }
}
```

#### Cleanup Job Setup

**Option A: PostgreSQL pg_cron (Supabase)**

```sql
-- Enable pg_cron extension in Supabase dashboard
-- Then create the job:

SELECT cron.schedule(
  'release-expired-holds',
  '* * * * *',  -- Every minute
  $$
    UPDATE slot_of_appointments
    SET
      status = 'AVAILABLE',
      held_by_id = NULL,
      held_until = NULL,
      version = version + 1,
      updated_at = NOW()
    WHERE
      status = 'HELD'
      AND held_until < NOW()
  $$
);
```

**Option B: Dart Frog Background Worker**

```dart
// In your Dart Frog main.dart or a separate worker process

void startCleanupWorker() {
  Timer.periodic(const Duration(minutes: 1), (_) async {
    try {
      final service = TwoPhaseBookingService(db);
      final released = await service.releaseExpiredHolds();
      print('[Cleanup] Released $released expired holds');
    } catch (e) {
      print('[Cleanup] Error: $e');
    }
  });
}
```

---

### Choosing the Right Pattern

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    WHICH LOCKING PATTERN TO USE?                             │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  ┌─────────────────────┐                                                    │
│  │ How many users      │                                                    │
│  │ compete for same    │                                                    │
│  │ resource?           │                                                    │
│  └──────────┬──────────┘                                                    │
│             │                                                                │
│     ┌───────┴───────┐                                                       │
│     ▼               ▼                                                       │
│   LOW             HIGH                                                      │
│  (< 10)          (> 100)                                                    │
│     │               │                                                       │
│     ▼               ▼                                                       │
│  ┌──────────┐   ┌───────────────────┐                                       │
│  │OPTIMISTIC│   │ Need payment or   │                                       │
│  │ LOCKING  │   │ user confirmation?│                                       │
│  └──────────┘   └─────────┬─────────┘                                       │
│                     ┌─────┴─────┐                                           │
│                     ▼           ▼                                           │
│                    YES          NO                                          │
│                     │           │                                           │
│                     ▼           ▼                                           │
│              ┌───────────┐  ┌────────────┐                                  │
│              │ TWO-PHASE │  │ Multiple   │                                  │
│              │RESERVATION│  │ servers?   │                                  │
│              └───────────┘  └─────┬──────┘                                  │
│                              ┌────┴────┐                                    │
│                              ▼         ▼                                    │
│                             YES        NO                                   │
│                              │         │                                    │
│                              ▼         ▼                                    │
│                       ┌───────────┐ ┌───────────┐                           │
│                       │DISTRIBUTED│ │PESSIMISTIC│                           │
│                       │   LOCK    │ │  LOCKING  │                           │
│                       │  (Redis)  │ │ (FOR UPD) │                           │
│                       └───────────┘ └───────────┘                           │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

| Pattern | Pros | Cons | Use When |
|---------|------|------|----------|
| **Optimistic Locking** | Simple, no blocking | Retries needed on conflict | Low contention |
| **Pessimistic Locking** | Guaranteed exclusive access | Can cause waits | High contention, single DB |
| **Distributed Lock** | Works across servers | Adds Redis dependency | Microservices, multi-server |
| **Two-Phase** | User-friendly, handles payment | More complex, needs cleanup | E-commerce, bookings |

---

## 3. Booking Scenarios Deep Dive

### 3.1 Appointment Slots (Your Current Use Case)

```mermaid
flowchart TD
    A[User selects time slot] --> B{Slot available?}
    B -->|No| C[Show error, suggest alternatives]
    B -->|Yes| D[Create HOLD for 10 minutes]
    D --> E[Show payment screen]
    E --> F{Payment completed?}
    F -->|Yes| G[Convert HOLD to CONFIRMED]
    F -->|Timeout| H[Release HOLD automatically]
    G --> I[Send confirmation notifications]
    H --> J[Slot available for others]
```

#### Handling Overlapping Time Ranges

When users can book custom time ranges (not fixed slots), you need to check for overlaps:

```dart
/// Check for overlapping appointments
Future<bool> hasOverlappingBooking({
  required String consultantId,
  required DateTime startsAt,
  required DateTime endsAt,
}) async {
  final result = await _db.query('''
    SELECT id FROM slot_of_appointments
    WHERE
      consultant_id = @consultantId
      AND status IN ('HELD', 'CONFIRMED')
      AND (
        -- New booking starts during existing
        (starts_at <= @startsAt AND ends_at > @startsAt)
        -- New booking ends during existing
        OR (starts_at < @endsAt AND ends_at >= @endsAt)
        -- New booking contains existing
        OR (starts_at >= @startsAt AND ends_at <= @endsAt)
      )
    LIMIT 1
  ''', {
    'consultantId': consultantId,
    'startsAt': startsAt,
    'endsAt': endsAt,
  });

  return result.isNotEmpty;
}
```

### 3.2 Limited Inventory (Tickets/Seats)

For scenarios like movie tickets or event seats, use atomic counter decrements:

```dart
/// Atomic inventory decrement
Future<InventoryResult> reserveInventory({
  required String productId,
  required int quantity,
}) async {
  final result = await _db.query('''
    UPDATE products
    SET
      available_quantity = available_quantity - @quantity,
      version = version + 1
    WHERE
      id = @productId
      AND available_quantity >= @quantity  -- Prevent negative
    RETURNING id, available_quantity
  ''', {
    'productId': productId,
    'quantity': quantity,
  });

  if (result.isEmpty) {
    return InventoryResult.outOfStock();
  }

  return InventoryResult.success(
    remainingQuantity: result.first['available_quantity'],
  );
}
```

### 3.3 Real-Time Matching (Uber-Style)

For driver-rider matching, use an event-driven approach:

```mermaid
flowchart LR
    A[Rider requests ride] --> B[Publish to matching queue]
    B --> C[Matching service]
    C --> D{Find nearby drivers}
    D --> E[Send offers to drivers]
    E --> F{Driver accepts?}
    F -->|Yes| G[Lock driver, assign ride]
    F -->|No/Timeout| H[Try next driver]
    G --> I[Notify rider]
    H --> D
```

```dart
/// Driver matching with lock
class MatchingService {
  final DistributedLock _lock;
  final DatabaseClient _db;

  Future<MatchResult> assignDriverToRide({
    required String rideId,
    required String driverId,
  }) async {
    // Lock the driver to prevent double-assignment
    final lockToken = await _lock.acquireLock(
      resource: 'driver:$driverId',
      ttl: const Duration(seconds: 30),
    );

    if (lockToken == null) {
      return MatchResult.driverBusy();
    }

    try {
      // Check driver is still available
      final driver = await _db.findDriverById(driverId);
      if (driver['status'] != 'AVAILABLE') {
        return MatchResult.driverBusy();
      }

      // Assign driver to ride
      await _db.transaction((tx) async {
        await tx.query('''
          UPDATE drivers SET status = 'ON_RIDE', current_ride_id = @rideId
          WHERE id = @driverId
        ''', {'driverId': driverId, 'rideId': rideId});

        await tx.query('''
          UPDATE rides SET driver_id = @driverId, status = 'MATCHED'
          WHERE id = @rideId
        ''', {'driverId': driverId, 'rideId': rideId});
      });

      return MatchResult.success(driverId: driverId);

    } finally {
      await _lock.releaseLock(
        resource: 'driver:$driverId',
        lockToken: lockToken,
      );
    }
  }
}
```

---

## 4. Database Scaling Strategies

### 4.1 Connection Pooling

**The Problem:** Database connections are expensive. Without pooling, each request creates a new connection, which can exhaust the database.

```
WITHOUT POOLING:                    WITH POOLING:

Request 1 ──► New Connection ──┐    Request 1 ──┐
Request 2 ──► New Connection ──┼──► DB         │     ┌─────────────┐
Request 3 ──► New Connection ──┤              └────►│ Connection  │
...                            │    Request 2 ──────►│    Pool     │──► DB
Request 100 ──► REFUSED! ◄─────┘    Request 3 ──────►│ (20 conns)  │
                                    ...          ────►└─────────────┘
                                    Request 100 ─────►  Waits briefly
```

#### Supabase Connection Pooling

Supabase provides built-in connection pooling via PgBouncer:

```dart
// Use the pooler URL (port 6543) instead of direct (port 5432)
class EnvConfig {
  // Direct connection - for migrations only
  static const directUrl = 'postgresql://user:pass@db.xxx.supabase.co:5432/postgres';

  // Pooled connection - for application use
  static const databaseUrl = 'postgresql://user:pass@db.xxx.supabase.co:6543/postgres';
}
```

#### Pool Configuration in Dart

```dart
class DatabaseClient {
  late final Pool _pool;

  Future<void> initialize() async {
    final uri = Uri.parse(EnvConfig.databaseUrl);

    _pool = Pool(
      Endpoint(
        host: uri.host,
        port: uri.port,
        database: uri.pathSegments.first,
        username: uri.userInfo.split(':')[0],
        password: uri.userInfo.split(':')[1],
      ),
      settings: PoolSettings(
        maxConnectionCount: 20,      // Max connections in pool
        minConnectionCount: 2,       // Keep 2 warm connections
        maxConnectionAge: Duration(minutes: 30),
        queryTimeout: Duration(seconds: 30),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> query(
    String sql,
    Map<String, dynamic> params,
  ) async {
    // Pool automatically manages connections
    return await _pool.withConnection((conn) async {
      final result = await conn.execute(sql, params);
      return result.toList();
    });
  }
}
```

### 4.2 Read Replicas

**The Problem:** Single database becomes bottleneck for read-heavy applications.

**Solution:** Use read replicas for queries, primary for writes.

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          READ REPLICA ARCHITECTURE                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│                    ┌──────────────┐                                         │
│   WRITES ─────────►│   Primary    │                                         │
│   (bookings,       │   Database   │──────── Replication ──────┐             │
│    updates)        └──────────────┘                           │             │
│                                                               ▼             │
│                                                        ┌──────────────┐     │
│   READS ──────────────────────────────────────────────►│   Replica    │     │
│   (list slots,                                         │   Database   │     │
│    search,                                             └──────────────┘     │
│    profiles)                                                                │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### Implementation Pattern

```dart
class DatabaseClient {
  final Pool _primaryPool;  // For writes
  final Pool _replicaPool;  // For reads

  /// Use for writes and reads that need consistency
  Future<T> write<T>(Future<T> Function(Connection) action) async {
    return await _primaryPool.withConnection(action);
  }

  /// Use for reads that can tolerate slight delays
  Future<T> read<T>(Future<T> Function(Connection) action) async {
    return await _replicaPool.withConnection(action);
  }

  /// Use for reads that MUST see latest writes
  Future<T> readPrimary<T>(Future<T> Function(Connection) action) async {
    return await _primaryPool.withConnection(action);
  }
}

// Usage
class ConsultantService {
  final DatabaseClient _db;

  /// List consultants - can use replica (data can be slightly stale)
  Future<List<Consultant>> listConsultants() async {
    return await _db.read((conn) async {
      // Query goes to replica
      final result = await conn.execute('SELECT * FROM consultants...');
      return result.map(Consultant.fromRow).toList();
    });
  }

  /// Check slot availability - must use primary (need latest data)
  Future<bool> isSlotAvailable(String slotId) async {
    return await _db.readPrimary((conn) async {
      // Query goes to primary for consistency
      final result = await conn.execute(
        'SELECT status FROM slots WHERE id = @id',
        {'id': slotId},
      );
      return result.first['status'] == 'AVAILABLE';
    });
  }

  /// Book slot - always uses primary
  Future<void> bookSlot(String slotId, String userId) async {
    return await _db.write((conn) async {
      await conn.execute('UPDATE slots SET ...', {...});
    });
  }
}
```

### 4.3 Database Indexing

**Critical indexes for booking systems:**

```sql
-- For finding available slots by consultant and date range
CREATE INDEX idx_slots_consultant_status_time
ON slot_of_appointments (consultant_id, status, starts_at, ends_at);

-- For cleanup job finding expired holds
CREATE INDEX idx_slots_held_until
ON slot_of_appointments (held_until)
WHERE status = 'HELD';

-- For user's booking history
CREATE INDEX idx_slots_booked_by
ON slot_of_appointments (booked_by_id, starts_at DESC)
WHERE status = 'CONFIRMED';

-- For consultant search
CREATE INDEX idx_consultants_verified_rating
ON consultant_profiles (is_verified, rating DESC)
WHERE is_verified = true;

-- For geospatial queries (if applicable)
CREATE INDEX idx_consultants_location
ON consultant_profiles USING GIST (location);
```

#### Checking Query Performance

```sql
-- Use EXPLAIN ANALYZE to see query performance
EXPLAIN ANALYZE
SELECT * FROM slot_of_appointments
WHERE consultant_id = 'xxx'
  AND status = 'AVAILABLE'
  AND starts_at >= '2024-01-01'
  AND starts_at < '2024-01-02';

-- Look for:
-- ✓ "Index Scan" or "Index Only Scan" (good)
-- ✗ "Seq Scan" on large tables (bad - needs index)
-- ✗ "Sort" with high cost (consider index for ORDER BY)
```

### 4.4 Partitioning (Future Scale)

For tables with millions of rows, partition by time:

```sql
-- Partition appointments by month
CREATE TABLE slot_of_appointments (
    id TEXT NOT NULL,
    starts_at TIMESTAMP NOT NULL,
    ends_at TIMESTAMP NOT NULL,
    consultant_id TEXT NOT NULL,
    status TEXT NOT NULL,
    -- ... other columns
) PARTITION BY RANGE (starts_at);

-- Create partitions for each month
CREATE TABLE slots_2024_01 PARTITION OF slot_of_appointments
    FOR VALUES FROM ('2024-01-01') TO ('2024-02-01');

CREATE TABLE slots_2024_02 PARTITION OF slot_of_appointments
    FOR VALUES FROM ('2024-02-01') TO ('2024-03-01');

-- Benefits:
-- 1. Faster queries (only scan relevant partition)
-- 2. Easy archival (drop old partitions)
-- 3. Parallel processing possible
```

---

## 5. Caching Strategies

### 5.1 What to Cache

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           CACHING DECISION MATRIX                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   Data Type              │ Cache? │ TTL      │ Invalidation                 │
│   ───────────────────────┼────────┼──────────┼────────────────────────────  │
│   User sessions          │ YES    │ 30 min   │ On logout                    │
│   Consultant profiles    │ YES    │ 5 min    │ On profile update            │
│   Domain/Category list   │ YES    │ 1 hour   │ Manual (admin change)        │
│   Slot availability      │ MAYBE  │ 30 sec   │ On any booking               │
│   Search results         │ YES    │ 1 min    │ Time-based                   │
│   User's bookings        │ YES    │ 5 min    │ On new booking               │
│   Payment status         │ NO     │ -        │ Must be real-time            │
│   Current slot status    │ NO     │ -        │ Race condition risk          │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 5.2 Redis Implementation

#### Setup

```yaml
# pubspec.yaml
dependencies:
  redis: ^2.1.1
```

```dart
// lib/services/cache_service.dart
import 'package:redis/redis.dart';
import 'dart:convert';

class CacheService {
  late final RedisConnection _redis;
  late final Command _command;

  Future<void> initialize(String redisUrl) async {
    final uri = Uri.parse(redisUrl);
    _redis = RedisConnection();
    _command = await _redis.connect(uri.host, uri.port);

    // Authenticate if password provided
    if (uri.userInfo.isNotEmpty) {
      await _command.send(['AUTH', uri.userInfo]);
    }
  }

  /// Set a value with expiry
  Future<void> set(String key, dynamic value, {Duration? ttl}) async {
    final jsonValue = jsonEncode(value);

    if (ttl != null) {
      await _command.send(['SET', key, jsonValue, 'EX', ttl.inSeconds]);
    } else {
      await _command.send(['SET', key, jsonValue]);
    }
  }

  /// Get a value
  Future<T?> get<T>(String key) async {
    final result = await _command.send(['GET', key]);
    if (result == null) return null;
    return jsonDecode(result as String) as T;
  }

  /// Delete a key
  Future<void> delete(String key) async {
    await _command.send(['DEL', key]);
  }

  /// Delete keys by pattern
  Future<void> deletePattern(String pattern) async {
    final keys = await _command.send(['KEYS', pattern]);
    if (keys != null && (keys as List).isNotEmpty) {
      await _command.send(['DEL', ...keys]);
    }
  }
}
```

#### Cache-Aside Pattern

```dart
class ConsultantService {
  final DatabaseClient _db;
  final CacheService _cache;

  static const _profileTTL = Duration(minutes: 5);

  Future<ConsultantProfile?> getConsultantProfile(String id) async {
    final cacheKey = 'consultant:$id';

    // Step 1: Try cache first
    final cached = await _cache.get<Map<String, dynamic>>(cacheKey);
    if (cached != null) {
      return ConsultantProfile.fromJson(cached);
    }

    // Step 2: Cache miss - fetch from database
    final profile = await _db.findConsultantById(id);
    if (profile == null) return null;

    // Step 3: Store in cache for next time
    await _cache.set(cacheKey, profile.toJson(), ttl: _profileTTL);

    return profile;
  }

  Future<void> updateConsultantProfile(
    String id,
    Map<String, dynamic> updates,
  ) async {
    // Step 1: Update database
    await _db.updateConsultant(id, updates);

    // Step 2: Invalidate cache
    await _cache.delete('consultant:$id');

    // Alternatively: Update cache with new data
    // await _cache.set('consultant:$id', updatedProfile.toJson(), ttl: _profileTTL);
  }
}
```

### 5.3 Without Redis (Supabase-Only)

If you can't use Redis, here are alternatives:

#### Option A: In-Memory Cache (Single Server Only)

```dart
class InMemoryCache {
  final Map<String, _CacheEntry> _cache = {};

  T? get<T>(String key) {
    final entry = _cache[key];
    if (entry == null) return null;
    if (entry.expiresAt.isBefore(DateTime.now())) {
      _cache.remove(key);
      return null;
    }
    return entry.value as T;
  }

  void set(String key, dynamic value, Duration ttl) {
    _cache[key] = _CacheEntry(
      value: value,
      expiresAt: DateTime.now().add(ttl),
    );
  }

  void delete(String key) => _cache.remove(key);

  // Run periodically to clean expired entries
  void cleanup() {
    final now = DateTime.now();
    _cache.removeWhere((_, entry) => entry.expiresAt.isBefore(now));
  }
}

class _CacheEntry {
  final dynamic value;
  final DateTime expiresAt;
  _CacheEntry({required this.value, required this.expiresAt});
}
```

#### Option B: PostgreSQL Materialized Views

For expensive queries that don't need real-time data:

```sql
-- Create materialized view for consultant search
CREATE MATERIALIZED VIEW consultant_search_view AS
SELECT
  c.id,
  c.user_id,
  u.name,
  u.image,
  c.headline,
  c.rating,
  c.experience,
  d.name as domain_name,
  ARRAY_AGG(DISTINCT sd.name) as subdomain_names,
  c.languages
FROM consultant_profiles c
JOIN users u ON c.user_id = u.id
JOIN domains d ON c.domain_id = d.id
LEFT JOIN _consultant_to_subdomain cs ON c.id = cs."A"
LEFT JOIN subdomains sd ON cs."B" = sd.id
WHERE c.is_verified = true
GROUP BY c.id, u.name, u.image, d.name;

-- Create index on materialized view
CREATE INDEX idx_consultant_search_rating
ON consultant_search_view (rating DESC);

-- Refresh periodically (every 5 minutes via pg_cron)
SELECT cron.schedule(
  'refresh-consultant-search',
  '*/5 * * * *',
  'REFRESH MATERIALIZED VIEW CONCURRENTLY consultant_search_view'
);
```

---

## 6. Message Queues & Async Processing

### 6.1 Why Queues Matter

```
WITHOUT QUEUE:                      WITH QUEUE:

User ──► Book ──► Save ──► Email    User ──► Book ──► Save ──► Response
                    │                               │
                    ├──► SMS                        └──► Queue ──► Worker
                    │                                        │
                    └──► Analytics                           ├──► Email
                                                             ├──► SMS
Response after ALL tasks done       Response immediately     └──► Analytics
(slow, brittle)                     (fast, resilient)
```

### 6.2 Implementation Options

#### Option A: Supabase Edge Functions + Database Queue

```sql
-- Create a simple job queue table
CREATE TABLE job_queue (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  type TEXT NOT NULL,
  payload JSONB NOT NULL,
  status TEXT DEFAULT 'pending',
  attempts INT DEFAULT 0,
  max_attempts INT DEFAULT 3,
  run_at TIMESTAMP DEFAULT NOW(),
  created_at TIMESTAMP DEFAULT NOW(),
  completed_at TIMESTAMP,
  error TEXT
);

CREATE INDEX idx_job_queue_pending
ON job_queue (run_at)
WHERE status = 'pending';
```

```dart
// Enqueue a job
class JobQueue {
  final DatabaseClient _db;

  Future<void> enqueue({
    required String type,
    required Map<String, dynamic> payload,
    Duration? delay,
  }) async {
    final runAt = delay != null
        ? DateTime.now().add(delay)
        : DateTime.now();

    await _db.query('''
      INSERT INTO job_queue (type, payload, run_at)
      VALUES (@type, @payload, @runAt)
    ''', {
      'type': type,
      'payload': payload,
      'runAt': runAt,
    });
  }
}

// In booking service
class BookingService {
  final JobQueue _queue;

  Future<void> onBookingConfirmed(Booking booking) async {
    // These happen async, don't block the response
    await _queue.enqueue(
      type: 'send_confirmation_email',
      payload: {'bookingId': booking.id, 'email': booking.userEmail},
    );

    await _queue.enqueue(
      type: 'send_confirmation_sms',
      payload: {'bookingId': booking.id, 'phone': booking.userPhone},
    );

    await _queue.enqueue(
      type: 'notify_consultant',
      payload: {'bookingId': booking.id, 'consultantId': booking.consultantId},
    );

    await _queue.enqueue(
      type: 'track_analytics',
      payload: {'event': 'booking_confirmed', 'bookingId': booking.id},
    );
  }
}
```

**Worker (Edge Function or Background Process):**

```dart
class JobWorker {
  final DatabaseClient _db;
  final Map<String, Future<void> Function(Map<String, dynamic>)> _handlers;

  Future<void> processJobs() async {
    // Fetch and lock pending jobs
    final jobs = await _db.query('''
      UPDATE job_queue
      SET
        status = 'processing',
        attempts = attempts + 1
      WHERE id IN (
        SELECT id FROM job_queue
        WHERE status = 'pending'
          AND run_at <= NOW()
          AND attempts < max_attempts
        ORDER BY run_at
        LIMIT 10
        FOR UPDATE SKIP LOCKED  -- Don't wait for locked rows
      )
      RETURNING *
    ''');

    for (final job in jobs) {
      try {
        final handler = _handlers[job['type']];
        if (handler != null) {
          await handler(job['payload'] as Map<String, dynamic>);
        }

        await _db.query('''
          UPDATE job_queue
          SET status = 'completed', completed_at = NOW()
          WHERE id = @id
        ''', {'id': job['id']});

      } catch (e) {
        await _db.query('''
          UPDATE job_queue
          SET
            status = CASE WHEN attempts >= max_attempts THEN 'failed' ELSE 'pending' END,
            error = @error,
            run_at = NOW() + INTERVAL '1 minute' * attempts  -- Exponential backoff
          WHERE id = @id
        ''', {'id': job['id'], 'error': e.toString()});
      }
    }
  }
}
```

#### Option B: Redis Streams

```dart
class RedisQueue {
  final Command _redis;
  final String _stream = 'jobs';

  Future<void> enqueue(String type, Map<String, dynamic> payload) async {
    await _redis.send([
      'XADD', _stream, '*',
      'type', type,
      'payload', jsonEncode(payload),
    ]);
  }

  Future<void> consume(String consumerGroup, String consumer) async {
    // Create consumer group if not exists
    try {
      await _redis.send([
        'XGROUP', 'CREATE', _stream, consumerGroup, '0', 'MKSTREAM'
      ]);
    } catch (_) {
      // Group already exists
    }

    while (true) {
      // Read new messages
      final result = await _redis.send([
        'XREADGROUP', 'GROUP', consumerGroup, consumer,
        'COUNT', '10',
        'BLOCK', '5000',  // Wait 5 seconds for new messages
        'STREAMS', _stream, '>'
      ]);

      if (result == null) continue;

      for (final message in result) {
        final id = message[0];
        final fields = message[1];

        try {
          await _processMessage(fields);
          await _redis.send(['XACK', _stream, consumerGroup, id]);
        } catch (e) {
          // Message will be redelivered
          print('Failed to process $id: $e');
        }
      }
    }
  }
}
```

---

## 7. High Availability & Fault Tolerance

### 7.1 Circuit Breaker Pattern

**Prevents cascade failures when a service is down.**

```mermaid
flowchart LR
    A[Request] --> B{Circuit State?}
    B -->|CLOSED| C[Try Service]
    C -->|Success| D[Return Result]
    C -->|Failure| E[Increment Failure Count]
    E --> F{Threshold Reached?}
    F -->|Yes| G[OPEN Circuit]
    F -->|No| H[Return Error]

    B -->|OPEN| I{Timeout Expired?}
    I -->|No| J[Return Fallback]
    I -->|Yes| K[HALF-OPEN]

    K --> L[Try One Request]
    L -->|Success| M[CLOSED]
    L -->|Failure| G
```

```dart
enum CircuitState { closed, open, halfOpen }

class CircuitBreaker {
  final String name;
  final int failureThreshold;
  final Duration openDuration;
  final Duration halfOpenTimeout;

  CircuitState _state = CircuitState.closed;
  int _failureCount = 0;
  DateTime? _openedAt;

  CircuitBreaker({
    required this.name,
    this.failureThreshold = 5,
    this.openDuration = const Duration(seconds: 30),
    this.halfOpenTimeout = const Duration(seconds: 5),
  });

  Future<T> execute<T>(
    Future<T> Function() action, {
    T Function()? fallback,
  }) async {
    // Check if circuit is open
    if (_state == CircuitState.open) {
      if (DateTime.now().difference(_openedAt!) > openDuration) {
        _state = CircuitState.halfOpen;
      } else {
        if (fallback != null) return fallback();
        throw CircuitOpenException('Circuit $name is open');
      }
    }

    try {
      final result = await action().timeout(halfOpenTimeout);
      _onSuccess();
      return result;
    } catch (e) {
      _onFailure();
      if (fallback != null) return fallback();
      rethrow;
    }
  }

  void _onSuccess() {
    _failureCount = 0;
    _state = CircuitState.closed;
  }

  void _onFailure() {
    _failureCount++;
    if (_failureCount >= failureThreshold) {
      _state = CircuitState.open;
      _openedAt = DateTime.now();
      print('Circuit $name opened after $failureThreshold failures');
    }
  }
}
```

#### Usage

```dart
class PaymentService {
  final CircuitBreaker _circuit = CircuitBreaker(
    name: 'razorpay',
    failureThreshold: 3,
    openDuration: Duration(seconds: 60),
  );

  Future<PaymentResult> processPayment(PaymentRequest request) async {
    return await _circuit.execute(
      () => _razorpayApi.charge(request),
      fallback: () => PaymentResult.unavailable(
        message: 'Payment service temporarily unavailable. Please try again.',
      ),
    );
  }
}
```

### 7.2 Retry with Exponential Backoff

```dart
class RetryPolicy {
  final int maxAttempts;
  final Duration initialDelay;
  final double backoffMultiplier;
  final Duration maxDelay;

  const RetryPolicy({
    this.maxAttempts = 3,
    this.initialDelay = const Duration(milliseconds: 100),
    this.backoffMultiplier = 2.0,
    this.maxDelay = const Duration(seconds: 10),
  });

  Future<T> execute<T>(Future<T> Function() action) async {
    int attempt = 0;
    Duration delay = initialDelay;

    while (true) {
      try {
        attempt++;
        return await action();
      } catch (e) {
        if (attempt >= maxAttempts) {
          rethrow;
        }

        if (!_isRetryable(e)) {
          rethrow;
        }

        print('Attempt $attempt failed, retrying in ${delay.inMilliseconds}ms');
        await Future.delayed(delay);

        delay = Duration(
          milliseconds: (delay.inMilliseconds * backoffMultiplier).toInt(),
        );
        if (delay > maxDelay) delay = maxDelay;
      }
    }
  }

  bool _isRetryable(dynamic error) {
    // Network errors, timeouts, 5xx responses are retryable
    // 4xx client errors are not
    if (error is TimeoutException) return true;
    if (error is SocketException) return true;
    if (error is HttpException && error.statusCode >= 500) return true;
    return false;
  }
}
```

### 7.3 Graceful Degradation

```dart
class SlotService {
  final DatabaseClient _db;
  final CacheService? _cache;  // Optional - might be null if Redis is down

  Future<List<Slot>> getAvailableSlots({
    required String consultantId,
    required DateTime date,
  }) async {
    // Try cache first
    if (_cache != null) {
      try {
        final cached = await _cache!.get('slots:$consultantId:$date');
        if (cached != null) return cached;
      } catch (e) {
        // Cache unavailable - continue without it
        print('Cache unavailable: $e');
      }
    }

    // Always fall back to database
    final slots = await _db.findAvailableSlots(
      consultantId: consultantId,
      date: date,
    );

    // Try to cache for next time
    if (_cache != null) {
      try {
        await _cache!.set(
          'slots:$consultantId:$date',
          slots,
          ttl: Duration(seconds: 30),
        );
      } catch (e) {
        // Cache write failed - not critical
        print('Failed to cache slots: $e');
      }
    }

    return slots;
  }
}
```

---

## 8. Cross-Platform Consistency

### 8.1 Idempotency Keys

**Prevents duplicate operations when user clicks "Book" twice or network retries.**

```mermaid
sequenceDiagram
    participant User as User
    participant App as Mobile App
    participant API as Backend
    participant DB as Database

    User->>App: Clicks "Book"
    App->>App: Generate idempotency_key = "abc123"
    App->>API: POST /book (key: abc123)

    Note over API: Network timeout...

    App->>API: Retry POST /book (key: abc123)

    API->>DB: Check if abc123 exists
    DB-->>API: Yes, found existing booking
    API-->>App: Return existing booking (not duplicate!)

    App-->>User: "Booking confirmed"
```

#### Schema Addition

```prisma
model Booking {
  id              String   @id @default(cuid())
  idempotencyKey  String   @unique  // Add this
  slotId          String
  userId          String
  status          String
  createdAt       DateTime @default(now())

  @@index([idempotencyKey])
  @@map("bookings")
}
```

#### Implementation

```dart
// Mobile app - generate key before sending
class BookingScreen extends ConsumerWidget {
  Future<void> _handleBooking() async {
    // Generate idempotency key once per user action
    final idempotencyKey = '${userId}_${slotId}_${DateTime.now().millisecondsSinceEpoch}';

    // Store locally in case we need to retry
    await _localStorage.set('pending_booking_key', idempotencyKey);

    try {
      final result = await _api.createBooking(
        slotId: slotId,
        idempotencyKey: idempotencyKey,
      );
      await _localStorage.remove('pending_booking_key');
      // Show success
    } catch (e) {
      // On network error, user can tap again
      // Same key will be used, preventing duplicates
    }
  }
}
```

```dart
// Backend - check idempotency key
class BookingService {
  Future<Booking> createBooking({
    required String slotId,
    required String userId,
    required String idempotencyKey,
  }) async {
    // Step 1: Check if we already processed this key
    final existing = await _db.query('''
      SELECT * FROM bookings WHERE idempotency_key = @key
    ''', {'key': idempotencyKey});

    if (existing.isNotEmpty) {
      // Return existing booking - this is a retry
      return Booking.fromRow(existing.first);
    }

    // Step 2: Process booking (with locking)
    return await _db.transaction((tx) async {
      // Lock the slot
      final slot = await tx.query('''
        SELECT * FROM slots WHERE id = @slotId FOR UPDATE
      ''', {'slotId': slotId});

      if (slot.isEmpty || slot.first['status'] != 'AVAILABLE') {
        throw BookingException('Slot no longer available');
      }

      // Create booking with idempotency key
      final booking = await tx.query('''
        INSERT INTO bookings (slot_id, user_id, idempotency_key, status)
        VALUES (@slotId, @userId, @key, 'CONFIRMED')
        RETURNING *
      ''', {
        'slotId': slotId,
        'userId': userId,
        'key': idempotencyKey,
      });

      // Update slot
      await tx.query('''
        UPDATE slots SET status = 'BOOKED', booked_by_id = @userId
        WHERE id = @slotId
      ''', {'slotId': slotId, 'userId': userId});

      return Booking.fromRow(booking.first);
    });
  }
}
```

### 8.2 Unified API for Mobile and Web

For true consistency, both platforms should use the same backend:

```
RECOMMENDED ARCHITECTURE:

┌─────────────────┐     ┌─────────────────┐
│  Mobile App     │     │   Web App       │
│  (Flutter)      │     │   (Next.js)     │
└────────┬────────┘     └────────┬────────┘
         │                       │
         └───────────┬───────────┘
                     │
                     ▼
         ┌─────────────────────┐
         │   Unified API       │
         │   (Dart Frog or     │
         │    Next.js API)     │
         └──────────┬──────────┘
                    │
                    ▼
         ┌─────────────────────┐
         │    PostgreSQL       │
         └─────────────────────┘
```

#### Option A: Next.js API for Both

```typescript
// pages/api/bookings/create.ts
export default async function handler(req, res) {
  const { slotId, userId, idempotencyKey } = req.body;

  // Same logic for mobile and web
  const booking = await bookingService.create({
    slotId,
    userId,
    idempotencyKey,
  });

  return res.json(booking);
}
```

```dart
// Mobile calls web API
class BookingApi {
  final String baseUrl = 'https://yourapp.com/api';

  Future<Booking> createBooking({
    required String slotId,
    required String idempotencyKey,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/bookings/create'),
      headers: {'Authorization': 'Bearer $token'},
      body: jsonEncode({
        'slotId': slotId,
        'idempotencyKey': idempotencyKey,
      }),
    );
    return Booking.fromJson(jsonDecode(response.body));
  }
}
```

#### Option B: Shared Validation Logic

If you keep separate backends, share validation via database constraints and triggers:

```sql
-- Database enforces the rules, not application code

-- Prevent double booking at database level
CREATE UNIQUE INDEX idx_unique_booking_per_slot
ON bookings (slot_id)
WHERE status IN ('CONFIRMED', 'HELD');

-- Prevent overlapping bookings for same consultant
CREATE OR REPLACE FUNCTION check_slot_overlap()
RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM slots
    WHERE consultant_id = NEW.consultant_id
      AND id != NEW.id
      AND status IN ('CONFIRMED', 'HELD')
      AND tsrange(starts_at, ends_at) && tsrange(NEW.starts_at, NEW.ends_at)
  ) THEN
    RAISE EXCEPTION 'Overlapping booking exists';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_overlap
BEFORE INSERT OR UPDATE ON slots
FOR EACH ROW EXECUTE FUNCTION check_slot_overlap();
```

---

## 9. Monitoring & Observability

### 9.1 Key Metrics to Track

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           ESSENTIAL METRICS                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  BUSINESS METRICS              TECHNICAL METRICS                            │
│  ─────────────────             ──────────────────                           │
│  • Bookings per minute         • API response time (p50, p95, p99)          │
│  • Booking success rate        • Error rate by endpoint                     │
│  • Payment success rate        • Database query time                        │
│  • User registration rate      • Cache hit ratio                            │
│  • Active users (DAU/MAU)      • Queue depth and processing time            │
│                                                                              │
│  INFRASTRUCTURE METRICS        ALERTS TO SET UP                             │
│  ──────────────────────        ─────────────────                            │
│  • Database connections        • Error rate > 1%                            │
│  • CPU/Memory usage            • p99 latency > 2 seconds                    │
│  • Redis memory                • Database connections > 80%                 │
│  • Disk I/O                    • Queue depth > 1000                         │
│                                • Payment failure rate > 5%                  │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 9.2 Structured Logging

```dart
class Logger {
  void log({
    required String level,
    required String message,
    String? correlationId,
    String? userId,
    Map<String, dynamic>? extra,
  }) {
    final entry = {
      'timestamp': DateTime.now().toIso8601String(),
      'level': level,
      'message': message,
      'correlation_id': correlationId,
      'user_id': userId,
      ...?extra,
    };

    // Output as JSON for log aggregation tools
    print(jsonEncode(entry));
  }

  void info(String message, {String? correlationId, String? userId}) {
    log(level: 'INFO', message: message, correlationId: correlationId, userId: userId);
  }

  void error(String message, dynamic error, StackTrace? stack, {String? correlationId}) {
    log(
      level: 'ERROR',
      message: message,
      correlationId: correlationId,
      extra: {
        'error': error.toString(),
        'stack': stack?.toString(),
      },
    );
  }
}
```

#### Correlation IDs

Track a request across all services:

```dart
// Middleware to add correlation ID
Handler correlationMiddleware(Handler handler) {
  return (context) async {
    final correlationId = context.request.headers['x-correlation-id']
        ?? Uuid().v4();

    // Add to request context
    final updatedContext = context.provide<String>(() => correlationId);

    // Add to response headers
    final response = await handler(updatedContext);
    return response.copyWith(
      headers: {...response.headers, 'x-correlation-id': correlationId},
    );
  };
}

// Usage in any service
class BookingService {
  final Logger _logger;

  Future<Booking> createBooking(RequestContext context, ...) async {
    final correlationId = context.read<String>();

    _logger.info(
      'Creating booking for slot $slotId',
      correlationId: correlationId,
      userId: userId,
    );

    // ... booking logic

    _logger.info(
      'Booking created successfully',
      correlationId: correlationId,
    );
  }
}
```

### 9.3 Error Tracking with Sentry

```dart
// lib/core/error_tracking.dart
import 'package:sentry/sentry.dart';

class ErrorTracking {
  static Future<void> initialize() async {
    await SentryFlutter.init(
      (options) {
        options.dsn = EnvConfig.sentryDsn;
        options.environment = EnvConfig.environment;
        options.tracesSampleRate = 0.1;  // 10% of transactions
      },
    );
  }

  static Future<void> captureException(
    dynamic exception,
    StackTrace stackTrace, {
    Map<String, dynamic>? extra,
  }) async {
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
      withScope: (scope) {
        extra?.forEach((key, value) {
          scope.setExtra(key, value);
        });
      },
    );
  }

  static Future<void> captureMessage(
    String message, {
    SentryLevel level = SentryLevel.info,
  }) async {
    await Sentry.captureMessage(message, level: level);
  }
}
```

---

## 10. Infrastructure Options Comparison

### Comparison Matrix

| Feature | Supabase Only | Supabase + Redis | Full Cloud (AWS/GCP) |
|---------|---------------|------------------|----------------------|
| **Monthly Cost** | $25-100 | $50-200 | $200-2000+ |
| **Setup Complexity** | Low | Medium | High |
| **Max Concurrent Users** | ~10,000 | ~100,000 | Millions |
| **Race Condition Handling** | DB locks only | Distributed locks | Full arsenal |
| **Caching** | Materialized views | Redis cache | ElastiCache + CDN |
| **Message Queue** | pg_cron + table | Redis Streams | SQS/Pub-Sub |
| **Scaling** | Vertical only | Mixed | Horizontal auto-scale |
| **Maintenance** | Minimal | Low | Significant |
| **Best For** | MVPs, <10K users | Growing startups | Enterprise scale |

### Architecture by Stage

#### Stage 1: MVP (0-1,000 users)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           MVP ARCHITECTURE                                   │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   Mobile App ────────┐                                                      │
│                      ├────► Dart Frog (single instance) ────► Supabase     │
│   Web App ───────────┘                                           │         │
│                                                                  │         │
│                                                             PostgreSQL     │
│                                                                              │
│   Features:                                                                 │
│   • Database locks for race conditions                                      │
│   • Simple in-memory caching                                                │
│   • pg_cron for cleanup jobs                                                │
│   • Sentry for error tracking                                               │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### Stage 2: Growth (1,000-50,000 users)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         GROWTH ARCHITECTURE                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   Mobile App ─────┐                                                         │
│                   │    ┌─────────────┐                                      │
│   Web App ────────┼───►│ Load        │───► Dart Frog (2-3 instances)       │
│                   │    │ Balancer    │           │                          │
│   Admin App ──────┘    └─────────────┘           │                          │
│                                                  ▼                          │
│                              ┌─────────────────────────────────┐            │
│                              │                                 │            │
│                          ┌───┴───┐                        ┌────┴────┐       │
│                          │ Redis │                        │ Supabase│       │
│                          │ Cache │                        │ (pooled)│       │
│                          └───────┘                        └─────────┘       │
│                                                                              │
│   Features:                                                                 │
│   • Redis for distributed locks + caching                                   │
│   • Connection pooling via PgBouncer                                        │
│   • Read replicas for search queries                                        │
│   • Job queue with Redis Streams                                            │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### Stage 3: Scale (50,000+ users)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                          SCALE ARCHITECTURE                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│   CDN (CloudFlare/Fastly)                                                   │
│          │                                                                   │
│          ▼                                                                   │
│   ┌─────────────┐        ┌───────────────────┐                              │
│   │ API Gateway │───────►│ Kubernetes/ECS    │                              │
│   │ (Rate limit)│        │ (Auto-scaling)    │                              │
│   └─────────────┘        └─────────┬─────────┘                              │
│                                    │                                         │
│          ┌─────────────────────────┼─────────────────────────┐              │
│          │                         │                         │              │
│          ▼                         ▼                         ▼              │
│   ┌─────────────┐          ┌─────────────┐          ┌─────────────┐         │
│   │ Redis       │          │ PostgreSQL  │          │ Message     │         │
│   │ Cluster     │          │ (Primary +  │          │ Queue       │         │
│   │             │          │  Replicas)  │          │ (SQS/Pub)   │         │
│   └─────────────┘          └─────────────┘          └─────────────┘         │
│                                                                              │
│   Additional Services:                                                       │
│   • Elasticsearch for search                                                 │
│   • S3/GCS for file storage                                                 │
│   • DataDog/NewRelic for monitoring                                         │
│   • Microservices for specific domains                                       │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 11. Schema Recommendations

### Minimal Additions for Scalability

```prisma
// Add to existing models - minimal changes

model SlotOfAppointment {
  id            String      @id @default(cuid())
  startsAt      DateTime
  endsAt        DateTime
  consultantId  String

  // NEW: Booking state management
  status        SlotStatus  @default(AVAILABLE)
  heldById      String?
  heldUntil     DateTime?
  bookedById    String?

  // NEW: Optimistic locking
  version       Int         @default(0)

  createdAt     DateTime    @default(now())
  updatedAt     DateTime    @updatedAt

  // NEW: Performance indexes
  @@index([consultantId, status, startsAt])
  @@index([status, heldUntil])
  @@map("slot_of_appointments")
}

enum SlotStatus {
  AVAILABLE
  HELD
  CONFIRMED
  CANCELLED
}

model Booking {
  id              String   @id @default(cuid())

  // NEW: Idempotency key
  idempotencyKey  String   @unique

  slotId          String
  userId          String
  status          String

  // NEW: Payment tracking
  paymentId       String?
  paymentStatus   String?

  createdAt       DateTime @default(now())
  updatedAt       DateTime @updatedAt

  @@index([idempotencyKey])
  @@index([userId, createdAt])
  @@map("bookings")
}

// NEW: Job queue table (optional - for async processing)
model JobQueue {
  id          String   @id @default(cuid())
  type        String
  payload     Json
  status      String   @default("pending")
  attempts    Int      @default(0)
  maxAttempts Int      @default(3)
  runAt       DateTime @default(now())
  createdAt   DateTime @default(now())
  completedAt DateTime?
  error       String?

  @@index([status, runAt])
  @@map("job_queue")
}
```

---

## 12. Implementation Roadmap

### Phase 1: Foundation (Week 1)

```
□ Add optimistic locking (version field) to slots
□ Implement idempotency keys for bookings
□ Add critical database indexes
□ Set up structured logging
□ Configure connection pooling
```

### Phase 2: Reliability (Week 2)

```
□ Implement two-phase booking (hold → confirm)
□ Add cleanup job for expired holds
□ Implement retry logic with backoff
□ Set up error tracking (Sentry)
□ Add circuit breaker for external services
```

### Phase 3: Performance (Week 3-4)

```
□ Add Redis for caching (if needed)
□ Implement distributed locks (if multiple servers)
□ Set up read replicas (if high read load)
□ Add job queue for async operations
□ Configure rate limiting
```

### Phase 4: Observability (Ongoing)

```
□ Dashboard for key metrics
□ Alerts for critical thresholds
□ Log aggregation and search
□ Performance monitoring
□ Regular load testing
```

---

## Summary

Building a scalable system like Swiggy, Uber, or Netflix requires:

1. **Race Condition Handling** - Use optimistic locking, pessimistic locking, or distributed locks based on your contention level

2. **Two-Phase Booking** - Hold resources temporarily, confirm after payment

3. **Database Optimization** - Connection pooling, proper indexing, read replicas

4. **Caching** - Redis for distributed cache, or in-memory for single server

5. **Async Processing** - Message queues for non-critical operations

6. **Fault Tolerance** - Circuit breakers, retries, graceful degradation

7. **Cross-Platform Consistency** - Idempotency keys, unified API, database constraints

8. **Monitoring** - Track the right metrics, set up alerts, use correlation IDs

Start simple with database locks and grow your infrastructure as your user base expands. The key is to build incrementally—don't over-engineer from day one, but design with scaling in mind.

---

## Related Documentation

- [Authentication Architecture](./01-authentication-architecture.md)
- [Cross-Platform Auth Synchronization](./02-cross-platform-auth-synchronization.md)
- [Google OAuth Setup](../02-setup/01-google-oauth-setup.md)

---

## References

- [Designing Data-Intensive Applications](https://dataintensive.net/) - Martin Kleppmann
- [PostgreSQL Locking Documentation](https://www.postgresql.org/docs/current/explicit-locking.html)
- [Redis Distributed Locks (Redlock)](https://redis.io/topics/distlock)
- [Circuit Breaker Pattern](https://martinfowler.com/bliki/CircuitBreaker.html)
- [Idempotency Keys](https://stripe.com/docs/api/idempotent_requests)
