# Assignment App – <img src="assets/icons/home_navigation_icon.png" width="27"/> S.Rocks.Music

A Flutter-based cross-platform application designed for S.Rocks.Music. This app integrates Firebase Firestore to fetch and display music-related services using clean architecture (MVVM) and Provider state management.

---

## ✨ Key Features

* 🔥 Firestore integration to fetch real-time service data
* 🎯 MVVM architecture for separation of concerns
* 💼 Provider for reactive state management
* 🧩 Modular file structure for scalability
* 🖼️ Visually rich UI with custom tiles and backgrounds

---

## 🗂️ Project Structure (`lib/`)

```
lib/
├── firebase_options.dart                     # Firebase configuration (auto-generated)
├── main.dart                                 # App entry point
│
├── models/
│   └── service.dart                          # Service model representing Firestore documents
│
├── providers/
│   ├── bottom_navigation_bar_provider.dart   # State for navigation
│   └── music_services_provider.dart          # State for music services
│
├── repositories/
│   └── service_repository.dart               # Firestore fetch logic for music services
│
├── screens/
│   ├── dummy_service_screen.dart             # Placeholder or detail screen
│   └── home_screen.dart                      # Main home screen with header UI
│
├── view_models/
│   └── service_view_model.dart               # ViewModel connecting repository to UI
│
├── views/
│   └── music_service_view.dart               # Widget that displays list of music services
│
└── widgets/
    ├── circular_user_icon.dart               # UI component: circular user icon
    ├── custom_bottom_navigation_bar.dart     # Custom bottom navigation bar
    └── music_service_tile.dart               # UI tile to display each music service
```

---

## 🔥 Firestore Integration

The app fetches data from a Firestore **collection named `music_services`**. Each document in the collection contains the following fields (all `String` type):

* `title`: Title of the service (eg. Music and Production)
* `description`: Short description about the service (eg. Custom instrumentals & film scoring)
* `icon_name`: Name of the local asset icon file (eg. music_and_production.png) 
* `bg_image`: URL or asset name for the background image (eg. music_and_production_icon.svg)

**Usage Flow:**

* `service_repository.dart` fetches data from Firestore.
* `music_services_provider.dart` holds this data using `ChangeNotifier`.
* `music_service_view.dart` uses `Provider.of` to build UI dynamically using `music_service_tile.dart`.

---

## 📸 Screenshots

> Add your screenshots here

```
📷 Add image files to a folder like assets/screenshots/ and embed them below:

![Home Screen](assets/screenshots/home_screen.png)
![Service Tile](assets/screenshots/service_tile.png)
```

---

## 🎥 Screen Recording

> You can record a walkthrough using tools like OBS Studio or Android Studio Emulator, then embed here:

```
🎬 Link to walkthrough video (optional): 
[Watch Demo on YouTube](https://youtube.com/your-video-link)
```

---

## 🛠️ Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/vedp18/assignment_app.git
   cd assignment_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Configure Firebase**

   * Add your `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) in the appropriate folders.
   * Use `flutterfire configure` if needed to regenerate `firebase_options.dart`.

4. **Run the app**

   ```bash
   flutter run
   ```

---


## 👨‍💻 For reaching me

**Ved Patel**
[Email-id](ved09003@gmail.com)
🔗 [GitHub – vedp18](https://github.com/vedp18)
🔗 [LinkedIn - Ved Patel](https://linkedin.com/in/ved--patel)


---