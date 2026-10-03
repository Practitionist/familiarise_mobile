# Unit Test: Slots

> **Feature:** Create/update/delete weekly availability slots, create/delete custom slots
> **Route:** `/schedule`
> **Backend:** `/api/slots/availability/weekly`, `/api/slots/availability/custom`

---

## Data Seeding

```sql
-- Verified consultant
INSERT INTO "users" (id, name, email, "emailVerified", role, "onboardingCompleted", "createdAt", "updatedAt")
VALUES ('test_unit_slots_u1', 'Slots Test Consultant', 'test_unit_slots@test.com', true, 'CONSULTANT', true, NOW(), NOW());

INSERT INTO "accounts" (id, "userId", "accountId", "providerId", password, "createdAt", "updatedAt")
VALUES ('test_unit_slots_a1', 'test_unit_slots_u1', 'test_unit_slots_u1', 'credential',
  '$2a$12$LJ3m4ys3Lf.GEHPmwH8Xh.XzoCvKkqWyYZaFphvixFFncWVsC4W4O', NOW(), NOW());

INSERT INTO "Domain" (id, name, "createdAt", "updatedAt")
VALUES ('test_unit_slots_dom', 'Technology', NOW(), NOW()) ON CONFLICT (id) DO NOTHING;

INSERT INTO "ConsultantProfile" (id, "userId", "domainId", "scheduleType", "isVerified", "verificationStatus", "createdAt", "updatedAt")
VALUES ('test_unit_slots_cp1', 'test_unit_slots_u1', 'test_unit_slots_dom', 'WEEKLY', true, 'VERIFIED', NOW(), NOW());
UPDATE "users" SET "consultantProfileId" = 'test_unit_slots_cp1' WHERE id = 'test_unit_slots_u1';

INSERT INTO "cookie_preferences" (id, "userId", essential, "consentGivenAt", "consentUpdatedAt")
VALUES ('test_unit_slots_ck1', 'test_unit_slots_u1', true, NOW(), NOW());
INSERT INTO "notification_preferences" (id, "userId") VALUES ('test_unit_slots_np1', 'test_unit_slots_u1');
```

---

## Scenarios

Sign in as `test_unit_slots@test.com` / `TestPassword123`.

### 1. View Schedule Page
```
navigate_page → url: http://localhost:3000/schedule
wait_for → text: "Schedule" OR text: "Availability"
take_snapshot
take_screenshot
```
**Expected:** Schedule management page loads with weekly/custom slot options.

### 2. Create Weekly Slot (via API)
```
fetch('/api/slots/availability/weekly', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    startDay: 'MONDAY',
    startTimeUtc: 600,
    endDay: 'MONDAY',
    endTimeUtc: 660,
    utcOffsetMinutes: 330
  })
}).then(r => r.json())
```
**Verify:** `SELECT id, "startDay", "startTimeUtc", "endTimeUtc" FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`
**Expected:** Slot created for Monday 10:00-11:00 UTC.

### 3. Create Weekly Slot (via UI)
```
navigate_page → url: http://localhost:3000/schedule
take_snapshot
-- Click on add slot / select day
click → uid: [Monday] OR click → uid: [Add Slot]
wait_for → timeout: 3000
take_snapshot
-- Select time range
fill → uid: [Start Time], value: "14:00"
fill → uid: [End Time], value: "15:00"
click → uid: [Save / Add]
wait_for → timeout: 5000
take_screenshot
```
**Verify:** `SELECT count(*) FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`

### 4. Update Weekly Slot (via API)
```
-- First get slot ID from list
const { data: weeklySlots } = await fetch('/api/slots/availability/weekly', {
  method: 'GET',
  credentials: 'include'
}).then(r => r.json());
const slotId = weeklySlots[0].id;

-- Then update
fetch(`/api/slots/availability/weekly/${slotId}`, {
  method: 'PUT',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    startTimeUtc: 720,
    endTimeUtc: 780
  })
}).then(r => r.json())
```
**Verify:** `SELECT "startTimeUtc", "endTimeUtc" FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`

### 5. Delete Weekly Slot (via API)
```
fetch(`/api/slots/availability/weekly/${slotId}`, {
  method: 'DELETE',
  credentials: 'include'
}).then(r => r.json())
```
**Verify:** `SELECT count(*) FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`
**Expected:** Count = 0 (or 1 if Scenario 3 also created a slot).

### 6. Create Custom Slot (via API)
```
const start = new Date(Date.now() + 7 * 24 * 3600 * 1000);
const end = new Date(start.getTime() + 3600 * 1000);
const { data: createdCustomSlot } = await fetch('/api/slots/availability/custom', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  credentials: 'include',
  body: JSON.stringify({
    startsAt: start.toISOString(),
    endsAt: end.toISOString()
  })
}).then(r => r.json());
const customSlotId = createdCustomSlot.id;
```
**Verify:** `SELECT id, "startsAt", "endsAt" FROM "SlotOfAvailabilityCustom" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`

### 7. Delete Custom Slot (via API)
```
fetch(`/api/slots/availability/custom/${customSlotId}`, {
  method: 'DELETE',
  credentials: 'include'
}).then(r => r.json())
```
**Verify:** `SELECT count(*) FROM "SlotOfAvailabilityCustom" WHERE "consultantProfileId" = 'test_unit_slots_cp1';`
**Expected:** Count = 0.

---

## Cleanup

```sql
DELETE FROM "SlotOfAvailabilityCustom" WHERE "consultantProfileId" = 'test_unit_slots_cp1';
DELETE FROM "SlotOfAvailabilityWeekly" WHERE "consultantProfileId" = 'test_unit_slots_cp1';
DELETE FROM "sessions" WHERE "userId" = 'test_unit_slots_u1';
DELETE FROM "ConsultantProfile" WHERE id = 'test_unit_slots_cp1';
DELETE FROM "notification_preferences" WHERE "userId" = 'test_unit_slots_u1';
DELETE FROM "cookie_preferences" WHERE "userId" = 'test_unit_slots_u1';
DELETE FROM "accounts" WHERE "userId" = 'test_unit_slots_u1';
DELETE FROM "users" WHERE id = 'test_unit_slots_u1';
DELETE FROM "Domain" WHERE id = 'test_unit_slots_dom';
```
