# Familiarise Mobile - UI Design & Wireframes

## Navigation Architecture

### Bottom Navigation (Main Shell)
```
+--------------------------------------------------+
|                                                  |
|               [Screen Content]                   |
|                                                  |
+--------------------------------------------------+
| [Home]    [Explore]    [Chat]    [Profile]      |
|   🏠         🔍          💬         👤           |
+--------------------------------------------------+
```

### App Navigation Flow

```
                         +------------------+
                         |   Splash Screen  |
                         +------------------+
                                  |
                    +-------------+-------------+
                    |                           |
           +--------v--------+         +--------v--------+
           |  Auth Required  |         |   Authenticated |
           +-----------------+         +-----------------+
                    |                           |
           +--------v--------+         +--------v--------+
           |   Sign In/Up    |         | Onboarding Done?|
           +-----------------+         +-----------------+
                    |                      |         |
                    |                    No |         | Yes
                    |                      |         |
                    |            +---------v----+    |
                    |            |  Onboarding  |    |
                    |            +--------------+    |
                    |                      |         |
                    +----------------------+---------+
                                           |
                                  +--------v--------+
                                  |   Main Shell    |
                                  | (Bottom Nav)    |
                                  +-----------------+
                                           |
              +------------+---------------+---------------+
              |            |               |               |
        +-----v----+ +-----v-----+ +-------v-----+ +------v-----+
        | Dashboard| |  Explore  | |    Chat     | |  Profile   |
        +----------+ +-----------+ +-------------+ +------------+
              |            |               |
              |      +-----v------+  +-----v------+
              |      | Consultant |  |  Chat Room |
              |      |  Profile   |  +------------+
              |      +------------+
              |            |
        +-----v----+ +-----v------+
        |  Meeting | |  Checkout  |
        +----------+ +------------+
                           |
                     +-----v------+
                     |  Payment   |
                     |  Success   |
                     +------------+
```

---

## Screen Wireframes

### 1. Splash Screen

```
+------------------------------------------+
|                                          |
|                                          |
|                                          |
|                                          |
|              [App Logo]                  |
|                                          |
|             Familiarise                  |
|                                          |
|          Find Your Mentor                |
|                                          |
|                                          |
|              [Loading...]                |
|                                          |
|                                          |
|                                          |
+------------------------------------------+
```

---

### 2. Sign In Screen

```
+------------------------------------------+
|                                          |
|              [App Logo]                  |
|             Familiarise                  |
|                                          |
|       Welcome back! Sign in to           |
|        continue your journey.            |
|                                          |
|  +------------------------------------+  |
|  |  Email                             |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Password                     [👁] |  |
|  +------------------------------------+  |
|                                          |
|           Forgot Password?               |
|                                          |
|  +------------------------------------+  |
|  |         Sign In (Primary)          |  |
|  +------------------------------------+  |
|                                          |
|  ─────────── or continue with ──────────|
|                                          |
|  +----------+  +----------+  +--------+  |
|  | [Google] |  | [Apple]  |  | [Meta] |  |
|  +----------+  +----------+  +--------+  |
|                                          |
|    Don't have an account? Sign Up        |
|                                          |
+------------------------------------------+
```

---

### 3. Sign Up Screen

```
+------------------------------------------+
|  [←]        Create Account               |
|                                          |
|  +------------------------------------+  |
|  |  Full Name                         |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Email                             |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Password                     [👁] |  |
|  +------------------------------------+  |
|  Must be at least 8 characters           |
|                                          |
|  +------------------------------------+  |
|  |  Confirm Password             [👁] |  |
|  +------------------------------------+  |
|                                          |
|  [✓] I agree to the Terms of Service     |
|      and Privacy Policy                  |
|                                          |
|  +------------------------------------+  |
|  |         Create Account             |  |
|  +------------------------------------+  |
|                                          |
|  ─────────── or sign up with ───────────|
|                                          |
|  +----------+  +----------+  +--------+  |
|  | [Google] |  | [Apple]  |  | [Meta] |  |
|  +----------+  +----------+  +--------+  |
|                                          |
|    Already have an account? Sign In      |
|                                          |
+------------------------------------------+
```

---

### 4. Onboarding Flow (5 Steps)

#### Step 1: Personal Info
```
+------------------------------------------+
|  Step 1 of 5                             |
|  [=======--------------------------]     |
|                                          |
|  Tell us about yourself                  |
|  We'll use this to personalize           |
|  your experience.                        |
|                                          |
|  +------------------------------------+  |
|  |  Full Name *                       |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Phone (optional)                  |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Date of Birth                [📅] |  |
|  +------------------------------------+  |
|                                          |
|  Gender                                  |
|  ( ) Male  ( ) Female  ( ) Other         |
|  ( ) Prefer not to say                   |
|                                          |
|  +------------------------------------+  |
|  |  Timezone                    [▼]   |  |
|  +------------------------------------+  |
|                                          |
|                      [Continue →]        |
|                                          |
+------------------------------------------+
```

#### Step 2: Professional Profile
```
+------------------------------------------+
|  Step 2 of 5                             |
|  [=============--------------------]     |
|                                          |
|  Your Professional Background            |
|  Help us match you with the              |
|  right experts.                          |
|                                          |
|  +------------------------------------+  |
|  |  Current Role / Title              |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Company / Organization            |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |  Industry                    [▼]   |  |
|  +------------------------------------+  |
|                                          |
|  Career Stage                            |
|  [Student] [Early] [Mid] [Senior] [Exec] |
|                                          |
|  +------------------------------------+  |
|  |  About Me (min 50 chars)           |  |
|  |                                    |  |
|  |                                    |  |
|  +------------------------------------+  |
|                                          |
|  [← Back]                [Continue →]    |
|                                          |
+------------------------------------------+
```

#### Step 3: Preferences
```
+------------------------------------------+
|  Step 3 of 5                             |
|  [====================--------------]    |
|                                          |
|  Your Preferences                        |
|  Customize how you want to connect       |
|  with experts.                           |
|                                          |
|  Preferred Communication                 |
|  [Video Call]  [Audio Call]  [In-Person] |
|                                          |
|  Preferred Language                      |
|  +------------------------------------+  |
|  |  English                     [▼]   |  |
|  +------------------------------------+  |
|                                          |
|  Budget Preference                       |
|  [Budget] [Moderate] [Premium] [Flexible]|
|                                          |
|  Skills You Want to Develop              |
|  +------------------------------------+  |
|  | [Python] [x]  [React] [x]          |  |
|  | [Add more...]                      |  |
|  +------------------------------------+  |
|                                          |
|  Your Goals                              |
|  +------------------------------------+  |
|  |  What do you hope to achieve?      |  |
|  |                                    |  |
|  +------------------------------------+  |
|                                          |
|  [← Back]                [Continue →]    |
|                                          |
+------------------------------------------+
```

#### Step 4: Agreement
```
+------------------------------------------+
|  Step 4 of 5                             |
|  [=========================--------]     |
|                                          |
|  Terms & Conditions                      |
|                                          |
|  +------------------------------------+  |
|  | By using Familiarise, you agree   |  |
|  | to our Terms of Service and       |  |
|  | Privacy Policy.                   |  |
|  |                                    |  |
|  | Key points:                        |  |
|  | - Respectful communication         |  |
|  | - Cancellation policy (24hr)       |  |
|  | - Payment terms                    |  |
|  | - Data privacy                     |  |
|  |                                    |  |
|  | [Read full terms...]               |  |
|  +------------------------------------+  |
|                                          |
|  [✓] I agree to the Terms of Service     |
|                                          |
|  [✓] I agree to the Privacy Policy       |
|                                          |
|  [✓] I consent to receive notifications  |
|                                          |
|  [← Back]                [Continue →]    |
|                                          |
+------------------------------------------+
```

#### Step 5: Review
```
+------------------------------------------+
|  Step 5 of 5                             |
|  [================================]      |
|                                          |
|  Review Your Profile                     |
|                                          |
|        [Profile Picture]                 |
|        [Upload Photo]                    |
|                                          |
|  Personal Info                    [Edit] |
|  ┌──────────────────────────────────┐   |
|  │ John Doe                          │   |
|  │ john@example.com                  │   |
|  │ +1 (555) 123-4567                 │   |
|  │ America/New_York                  │   |
|  └──────────────────────────────────┘   |
|                                          |
|  Professional                     [Edit] |
|  ┌──────────────────────────────────┐   |
|  │ Software Engineer @ TechCorp      │   |
|  │ Technology Industry               │   |
|  │ Mid-Career                        │   |
|  └──────────────────────────────────┘   |
|                                          |
|  Preferences                      [Edit] |
|  ┌──────────────────────────────────┐   |
|  │ Video Call • English              │   |
|  │ Flexible Budget                   │   |
|  │ Skills: Python, React, AWS        │   |
|  └──────────────────────────────────┘   |
|                                          |
|  [← Back]           [Complete Setup →]   |
|                                          |
+------------------------------------------+
```

---

### 5. Dashboard Screen (Home)

```
+------------------------------------------+
|  Good morning, John!                     |
|  Here's your learning journey            |
|                                          |
|  +------------------------------------+  |
|  | ⚠️ Pending Payment                  |  |
|  | 1 booking awaiting payment         |  |
|  |                      [Pay Now →]   |  |
|  +------------------------------------+  |
|                                          |
|  Upcoming Sessions                       |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Dr. Sarah Chen            |  |
|  | 🎥 Career Consultation             |  |
|  | Today, 3:00 PM (in 2 hours)        |  |
|  | +--------------------------------+ |  |
|  | |      [Join Meeting]            | |  |
|  | +--------------------------------+ |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Prof. Mike Wilson         |  |
|  | 📚 React Mastery Webinar          |  |
|  | Tomorrow, 10:00 AM                 |  |
|  |                     [Set Reminder] |  |
|  +------------------------------------+  |
|                                          |
|  December 2024                    [<][>] |
|  +------------------------------------+  |
|  | Mo Tu We Th Fr Sa Su              |  |
|  |  2  3  4  5  6  7  8              |  |
|  |  9 10 11 12 [13] 14 15   [●] Appt |  |
|  | 16 17 18 19 20● 21 22             |  |
|  | 23 24 25 26 27 28● 29             |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
| [Home]    [Explore]   [Chat]   [Profile] |
+------------------------------------------+
```

---

### 6. Explore Screen

```
+------------------------------------------+
|  Explore Experts                         |
|                                          |
|  +------------------------------------+  |
|  | 🔍 Search by name, skill...        |  |
|  +------------------------------------+  |
|                                          |
|  [All ▼] [Domain ▼] [Rating ▼] [Price ▼] |
|                                          |
|  Featured                         See all|
|  +---------------+  +---------------+    |
|  | [Avatar]      |  | [Avatar]      |    |
|  | Dr. Sarah C.  |  | Prof. Mike W. |    |
|  | ★ 4.9 (124)   |  | ★ 4.8 (89)    |    |
|  | AI/ML Expert  |  | React Expert  |    |
|  | from ₹2,500   |  | from ₹1,800   |    |
|  +---------------+  +---------------+    |
|                                          |
|  All Experts (47)                        |
|                                          |
|  +------------------------------------+  |
|  | [Avatar]  John Smith              |  |
|  |           ★ 4.7 • Cloud Arch       |  |
|  |           "Helping teams scale..." |  |
|  |           from ₹3,000/hr          |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar]  Lisa Wang               |  |
|  |           ★ 4.9 • Product Mgmt    |  |
|  |           "10+ years building..." |  |
|  |           from ₹2,200/hr          |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar]  Alex Johnson            |  |
|  |           ★ 4.6 • Data Science    |  |
|  |           "PhD in ML from MIT..." |  |
|  |           from ₹4,000/hr          |  |
|  +------------------------------------+  |
|                                          |
|                [Load More]               |
|                                          |
+------------------------------------------+
| [Home]    [Explore]   [Chat]   [Profile] |
+------------------------------------------+
```

---

### 7. Expert Profile Screen

```
+------------------------------------------+
|  [←]                      [♡]  [Share]   |
|                                          |
|           [Large Avatar]                 |
|           Dr. Sarah Chen                 |
|           AI/ML Expert @ Google          |
|           ★ 4.9 (124 reviews)           |
|                                          |
|  [         Book Consultation         ]   |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  About                                   |
|  10+ years in AI/ML. Previously at       |
|  Meta, now leading AI research at        |
|  Google. Passionate about mentoring      |
|  the next generation of engineers.       |
|                                          |
|  Languages: English, Mandarin            |
|  Tools: Python, TensorFlow, PyTorch      |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Services                                |
|  [Consultations]  [Subscriptions]        |
|                                          |
|  +------------------------------------+  |
|  | 1 Hour Session                     |  |
|  | ₹2,500                             |  |
|  | • Document verification            |  |
|  | • 1-on-1 video call               |  |
|  |                      [Book Now]    |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | 2 Hour Session                     |  |
|  | ₹4,500                             |  |
|  | • Document verification            |  |
|  | • 1-on-1 video call               |  |
|  | • Extended chat support           |  |
|  |                      [Book Now]    |  |
|  +------------------------------------+  |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Availability                            |
|  Select a date to see available slots    |
|                                          |
|  December 2024                    [<][>] |
|  +------------------------------------+  |
|  | Mo Tu We Th Fr Sa Su              |  |
|  |  2  3  4  5  6  7  8              |  |
|  |  9 10 11 12 13[14] 15             |  |
|  | 16 17 18 19 20 21 22              |  |
|  | 23 24 25 26 27 28 29              |  |
|  +------------------------------------+  |
|                                          |
|  Available on Dec 14                     |
|  [9:00 AM] [10:00 AM] [2:00 PM]         |
|  [3:00 PM] [4:00 PM]                    |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Reviews (124)                See all →  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Mike T.  ★★★★★           |  |
|  | "Excellent session! Dr. Chen       |  |
|  | provided invaluable insights..."   |  |
|  | 2 days ago                         |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Anna K.  ★★★★★           |  |
|  | "Very knowledgeable and patient.   |  |
|  | Highly recommend!"                 |  |
|  | 1 week ago                         |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
```

---

### 8. Checkout Screen

```
+------------------------------------------+
|  [←]        Checkout                     |
|                                          |
|  Order Summary                           |
|  +------------------------------------+  |
|  | [Avatar] Dr. Sarah Chen            |  |
|  |                                    |  |
|  | 1 Hour Consultation                |  |
|  | Dec 14, 2024 • 3:00 PM            |  |
|  | (Asia/Kolkata)                     |  |
|  +------------------------------------+  |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Price Details                           |
|  +------------------------------------+  |
|  | Session Fee              ₹2,500   |  |
|  | Platform Fee (5%)        ₹125     |  |
|  | GST (18%)               ₹450      |  |
|  | ─────────────────────────────────  |  |
|  | Total                    ₹3,075   |  |
|  +------------------------------------+  |
|                                          |
|  Discount Code                           |
|  +-----------------------------+[Apply]  |
|  | Enter code                  |         |
|  +-----------------------------+         |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Payment Method                          |
|                                          |
|  +------------------------------------+  |
|  | (•) Razorpay                       |  |
|  |     UPI, Cards, Net Banking,       |  |
|  |     Wallets                        |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | ( ) Stripe                         |  |
|  |     International Cards            |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |       Pay ₹3,075 Securely         |  |
|  +------------------------------------+  |
|                                          |
|  🔒 Secure payment powered by Razorpay  |
|                                          |
|  By proceeding, you agree to the         |
|  cancellation policy and terms.          |
|                                          |
+------------------------------------------+
```

---

### 9. Payment Success Screen

```
+------------------------------------------+
|                                          |
|                                          |
|               [✓ Icon]                   |
|                                          |
|          Payment Successful!             |
|                                          |
|  Your booking has been confirmed.        |
|  You'll receive a confirmation email.    |
|                                          |
|  +------------------------------------+  |
|  | Booking Details                    |  |
|  |                                    |  |
|  | [Avatar] Dr. Sarah Chen            |  |
|  |                                    |  |
|  | 📅 Dec 14, 2024                   |  |
|  | ⏰ 3:00 PM - 4:00 PM              |  |
|  | 🌐 Asia/Kolkata                   |  |
|  |                                    |  |
|  | Order #FAM-20241214-1234          |  |
|  | Amount Paid: ₹3,075               |  |
|  +------------------------------------+  |
|                                          |
|  What's Next?                            |
|  • You'll receive a calendar invite      |
|  • Join link available 15 min before     |
|  • Prepare your questions                |
|                                          |
|  +------------------------------------+  |
|  |       Add to Calendar              |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |       Go to Dashboard              |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
```

---

### 10. Meeting Room Screen

```
+------------------------------------------+
|                                          |
|  +------------------------------------+  |
|  |                                    |  |
|  |                                    |  |
|  |     +------------+  +------------+ |  |
|  |     |            |  |            | |  |
|  |     |   Sarah    |  |    You     | |  |
|  |     |   Chen     |  |   (John)   | |  |
|  |     |            |  |            | |  |
|  |     +------------+  +------------+ |  |
|  |                                    |  |
|  |                                    |  |
|  +------------------------------------+  |
|                                          |
|  Career Consultation                     |
|  Dr. Sarah Chen • 45:23 remaining        |
|                                          |
|  +------------------------------------+  |
|  |                                    |  |
|  |  [🎤]  [📹]  [🔄]  [📱]  [🔴]    |  |
|  |  Mic   Cam  Flip  Share  Leave    |  |
|  |                                    |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
```

---

### 11. Chat List Screen

```
+------------------------------------------+
|  Messages                       [+ New]  |
|                                          |
|  +------------------------------------+  |
|  | 🔍 Search conversations            |  |
|  +------------------------------------+  |
|                                          |
|  Direct Messages                         |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Dr. Sarah Chen        🔵  |  |
|  |          Thanks for the session!   |  |
|  |          2 min ago                 |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Prof. Mike Wilson         |  |
|  |          See you in tomorrow's...  |  |
|  |          1 hour ago                |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Avatar] Lisa Wang                 |  |
|  |          Here's the resource I...  |  |
|  |          Yesterday                 |  |
|  +------------------------------------+  |
|                                          |
|  Group Channels                          |
|                                          |
|  +------------------------------------+  |
|  | [Icon] React Mastery Cohort        |  |
|  |        John: Has anyone tried...   |  |
|  |        3 hours ago                 |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [Icon] Python Bootcamp 2024        |  |
|  |        Anna: Thanks everyone!      |  |
|  |        2 days ago                  |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
| [Home]    [Explore]   [Chat]   [Profile] |
+------------------------------------------+
```

---

### 12. Chat Room Screen

```
+------------------------------------------+
|  [←]  Dr. Sarah Chen              [...]  |
|        Online                            |
|                                          |
|  +------------------------------------+  |
|  |                                    |  |
|  |         Today, 3:45 PM             |  |
|  |                                    |  |
|  |  [Avatar] Thanks for the great     |  |
|  |           session today! I really  |  |
|  |           appreciated your insights|  |
|  |           on the career transition.|  |
|  |                         3:45 PM ✓  |  |
|  |                                    |  |
|  |  You're welcome! I'm glad it was   |  |
|  |  helpful. Feel free to reach out   |  |
|  |  if you have more questions.       |  |
|  |  3:46 PM ✓✓                [Avatar]|  |
|  |                                    |  |
|  |  [Avatar] Here's the article I     |  |
|  |           mentioned about ML       |  |
|  |           career paths:            |  |
|  |           [Link Preview Card]      |  |
|  |                         3:47 PM ✓  |  |
|  |                                    |  |
|  |  This is exactly what I needed!    |  |
|  |  Thank you so much!                |  |
|  |  3:48 PM ✓✓                [Avatar]|  |
|  |                                    |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  | [📎] Type a message...       [▶️]  |  |
|  +------------------------------------+  |
|                                          |
+------------------------------------------+
```

---

### 13. Profile Screen

```
+------------------------------------------+
|  Profile                         [Edit]  |
|                                          |
|           [Large Avatar]                 |
|           John Doe                       |
|           john@example.com               |
|                                          |
|  ─────────────────────────────────────   |
|                                          |
|  Account                                 |
|  +------------------------------------+  |
|  | 👤 Personal Information         → |  |
|  +------------------------------------+  |
|  | 💼 Professional Profile         → |  |
|  +------------------------------------+  |
|  | 🔔 Notification Settings        → |  |
|  +------------------------------------+  |
|  | 🔒 Security & Privacy           → |  |
|  +------------------------------------+  |
|                                          |
|  Bookings                                |
|  +------------------------------------+  |
|  | 📅 Booking History              → |  |
|  +------------------------------------+  |
|  | 💳 Payment Methods              → |  |
|  +------------------------------------+  |
|                                          |
|  Support                                 |
|  +------------------------------------+  |
|  | ❓ Help Center                  → |  |
|  +------------------------------------+  |
|  | 📧 Contact Support              → |  |
|  +------------------------------------+  |
|  | 📝 Give Feedback                → |  |
|  +------------------------------------+  |
|                                          |
|  +------------------------------------+  |
|  |           Sign Out                 |  |
|  +------------------------------------+  |
|                                          |
|  App Version 1.0.0                       |
|                                          |
+------------------------------------------+
| [Home]    [Explore]   [Chat]   [Profile] |
+------------------------------------------+
```

---

## User Journeys

### Journey 1: Browse and Book Consultation

```
1. User opens app
   └── Dashboard shown with upcoming sessions

2. User taps "Explore" tab
   └── Expert grid displayed with search/filters

3. User searches for "AI mentor"
   └── Filtered results shown

4. User taps on expert card
   └── Expert Profile screen opens

5. User scrolls to view availability
   └── Calendar shows available dates

6. User selects a date (Dec 14)
   └── Available time slots appear

7. User selects 3:00 PM slot
   └── Slot highlighted, "Book Now" enabled

8. User taps "Book Now" on 1hr plan
   └── Checkout screen opens with summary

9. User reviews order, enters discount code
   └── Price updates if valid

10. User selects Razorpay, taps "Pay"
    └── Razorpay sheet opens

11. User completes payment
    └── Payment Success screen shown

12. User taps "Go to Dashboard"
    └── Dashboard shows new booking
```

### Journey 2: Join Video Meeting

```
1. User receives push notification
   └── "Your session starts in 15 minutes"

2. User taps notification
   └── App opens to Dashboard

3. Dashboard shows active "Join Meeting" button
   └── Button glowing/prominent

4. User taps "Join Meeting"
   └── Meeting Setup screen opens

5. User sees camera preview
   └── Can toggle mic/camera

6. User taps "Join"
   └── Meeting Room screen opens

7. User sees video grid with consultant
   └── Controls at bottom

8. User uses screen share/chat as needed
   └── Features available in meeting

9. User taps "Leave" when done
   └── Confirmation dialog appears

10. User confirms leave
    └── Returns to Dashboard
```

### Journey 3: Chat with Expert

```
1. User taps "Chat" tab
   └── Chat List shows conversations

2. User taps on expert conversation
   └── Chat Room opens

3. User reads message history
   └── Scrollable message list

4. User types message and sends
   └── Message appears with ✓

5. Expert responds (real-time)
   └── Message appears with notification

6. User shares attachment
   └── File picker opens

7. User exits chat
   └── Back to Chat List
```

---

## Design System

### Colors (Matching Web App)

```dart
// Light Mode
static const background = Color(0xFFFFFFFF);      // HSL(0, 0%, 100%)
static const foreground = Color(0xFF0A0A0B);      // HSL(240, 10%, 3.9%)
static const primary = Color(0xFF18181B);         // HSL(240, 5.9%, 10%)
static const primaryForeground = Color(0xFFFAFAFA); // HSL(0, 0%, 98%)
static const secondary = Color(0xFFF4F4F5);       // HSL(240, 4.8%, 95.9%)
static const secondaryForeground = Color(0xFF18181B);
static const muted = Color(0xFFF4F4F5);
static const mutedForeground = Color(0xFF71717A); // HSL(240, 3.8%, 46.1%)
static const destructive = Color(0xFFEF4444);     // HSL(0, 84.2%, 60.2%)
static const border = Color(0xFFE4E4E7);          // HSL(240, 5.9%, 90%)
static const ring = Color(0xFF18181B);

// Semantic Colors
static const success = Color(0xFF22C55E);
static const warning = Color(0xFFF59E0B);
static const error = Color(0xFFEF4444);
static const info = Color(0xFF3B82F6);
```

### Typography

```dart
// Font Family: Inter (or system font)
static const fontFamily = 'Inter';

// Sizes
static const textXs = 12.0;
static const textSm = 14.0;
static const textBase = 16.0;
static const textLg = 18.0;
static const textXl = 20.0;
static const text2Xl = 24.0;
static const text3Xl = 30.0;

// Weights
static const fontNormal = FontWeight.w400;
static const fontMedium = FontWeight.w500;
static const fontSemibold = FontWeight.w600;
static const fontBold = FontWeight.w700;
```

### Spacing

```dart
static const space1 = 4.0;
static const space2 = 8.0;
static const space3 = 12.0;
static const space4 = 16.0;
static const space5 = 20.0;
static const space6 = 24.0;
static const space8 = 32.0;
static const space10 = 40.0;
static const space12 = 48.0;
```

### Border Radius

```dart
static const radiusSm = 4.0;
static const radiusMd = 6.0;
static const radiusLg = 8.0;
static const radiusXl = 12.0;
static const radiusFull = 9999.0;
```

### Component Specifications

#### Buttons
- **Primary**: Dark bg (#18181B), white text, rounded-lg
- **Secondary**: Light bg (#F4F4F5), dark text, rounded-lg
- **Outline**: Transparent bg, border, rounded-lg
- **Ghost**: Transparent, no border, rounded-lg
- **Height**: 44px (touchable), 36px (compact)
- **Padding**: 16px horizontal

#### Cards
- **Background**: White
- **Border**: 1px #E4E4E7
- **Border Radius**: 12px
- **Shadow**: 0 1px 3px rgba(0,0,0,0.1)
- **Padding**: 16px

#### Input Fields
- **Height**: 44px
- **Border**: 1px #E4E4E7
- **Border Radius**: 8px
- **Padding**: 12px horizontal
- **Focus**: Primary ring
- **Error**: Destructive border

#### Avatar
- **Sizes**: 32px (sm), 40px (md), 56px (lg), 80px (xl)
- **Shape**: Circle
- **Fallback**: Initials with primary bg

---

## Accessibility Guidelines

1. **Touch Targets**: Minimum 44x44px
2. **Color Contrast**: WCAG AA (4.5:1 for text)
3. **Screen Reader**: Semantic labels on all interactive elements
4. **Font Scaling**: Support dynamic type
5. **Focus States**: Visible focus indicators
6. **Error States**: Clear error messages with icons
