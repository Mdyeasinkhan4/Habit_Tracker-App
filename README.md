# Habit Tracker App 🧠📈

A beautiful, modern, and highly responsive Habit Tracker UI application built with Flutter using Material 3 design guidelines. 

This project showcases clean UI/UX structures, dynamic dark/light theming, stateful form implementations, and optimized responsive handling across different device orientations.

---

# ✨ What's New (Latest Updates)

Tumi onboarding functionality theke ekti systematic structured application-e upgrade korecho:
- 🛣️ **Robust Routing (`GoRouter`):** Default standard routing matrix bad diye unified state-based `GoRouter` routing implementation kora hoyeche (`/`, `/add-habit`, `/habit-details`).
- 📝 **Interactive Form Management:** `AddHabitScreen`-e proper tracking, user context focus-unfocus context management, validation error mapping, ebong conditional `showDialog` modal success alerts add kora hoyeche.
- 👆 **Interactive Gestures:** Dashboard list viewport-e `Dismissible` horizontal swipe gesture wrapping engine integration kora hoyeche, dynamic dismiss behaviors tracking workflow build korar jonno.
- 🧭 **Unified Navigation Wrapper:** Bottom navigation interaction layer complete korte dedicated `NavBar` widget lifecycle set kora hoyeche layout toggle dynamic optimization infrastructure runtime track korar jonno.

---

# 🚀 Core Features

- 📋 **Adaptive Habit Dashboard:** Device configuration structure read kore adaptive column changes structure handle kore:
  - **Portrait Mode:** Extended layout structure dynamic vertical scrolling list format.
  - **Landscape Mode:** Adaptive dual-column auto-calculating child square aspect ratio layout structure via `GridView`.
- ➕ **Dynamic Flow Interaction:** Core page control overlay context access setup with interactive Floating Action Button.
- 🎨 **Adaptive Palette System:** System configuration deep link optimization with dynamic brightness configuration:
  - **Light Mode:** Vivid purple branding tones (`Color.fromARGB(255, 82, 0, 150)` Accent matching parameters).
  - **Dark Mode:** Sleek dark matte custom context layers (`surfaceContainerHigh` mapping structures).
- 🔥 **Analytical Habit Monitoring:** Quick preview metadata configuration wrapper built directly inside lightweight reusable cards.

---

# 📸 Current UI Overview

### Dashboard Screen Overview
![Dashboard UI Preview](https://github.com/Mdyeasinkhan4/Habit_Tracker-App/blob/1f8aae02e58f8777849172ebe95f08470023ae9f/Habit_Tracker_Preview_image.png)

The application handles various functional lifestyle components including:
- 💧 **Hydration Tracker** (Drinking Water - 2 Liters target mapping)
- 🏋️ **Physical Fitness** (Exercise configurations)
- 🧘 **Mental Wellness** (Meditation sequence management)
- 📚 **Intellectual Growth** (Reading target tracking)
- 😴 **Circadian Target Setup** (Sleep schedules)
- ...and other mock habit variables (*Running, Coding, Entertainment, Fasting avoidance models*).

---

# 🏗️ Updated Project Structure

```bash
lib/
├── main.dart             # Application initialization & Global Theming orchestrator
├── router.dart           # Declarative GoRouter structural routes map
├── screens/
│   ├── dashboard_screen.dart     # Responsive grid/list operational view screen
│   ├── add_habit_screen.dart     # Validated form entry module with alerting metrics
│   ├── habit_details_screen.dart # Granular data performance review viewport
│   └── profile_screen.dart       # Account context dummy placeholder
└── widgets/
    ├── habit_card.dart          # Isolated composite presentation data module
    └── nav_bar.dart             # Dynamic system state navigation view manager
🧠 Concepts & APIs Practiced
Navigation Management: Explicit declarations using declarative routes via the official go_router ecosystem.

Form Lifecycles: Form control states, validation predicates, focus deflection (FocusScope.of(context).unfocus()), and view scoping.

Dynamic Structural Adaptability: Context layout configuration mapping utilizing explicit MediaQuery aspect calculations.

Micro-interactions: Gesture processing via GestureDetector coupled with list mechanics such as sliding dismissals (Dismissible).

🛠️ Built With
Flutter SDK - Channel stable build structures

Dart Language - Object-oriented composition framework

GoRouter Extension - Declarative routing model

Material 3 Specifications - Design components architecture

🚀 Getting Started
1️⃣ Clone the Repository
Bash
git clone [https://github.com/your-username/habit_tracker.git](https://github.com/your-username/habit_tracker.git)
2️⃣ Project Space Navigation
Bash
cd habit_tracker
3️⃣ Synchronize Core Packages
Bash
flutter pub get
4️⃣ Launch Development Context
Bash
flutter run
🔮 Next Milestones
[ ] State Management Core: Integration of standard reactive state pipelines (Provider / Riverpod / Bloc).

[ ] Persistent Engine Integration: Transition from volatile inline mock array matrices to real localized persistence engines (Hive / Isar / SQLite).

[ ] Analytical Rendering Framework: Visual data metrics plotting engine deployment for historical monitoring loops.

[ ] Dynamic Local Notification Schemer: Push parameters notification task system.

📄 License
Distributed under the MIT License. See LICENSE for more information.
