# Screen shot and demo


https://github.com/user-attachments/assets/b286032f-7647-4e6b-887e-d39aa0da08f9


# Clone Elfie

Clone Elfie is a Flutter-based application designed to showcase advanced UI/UX design, state management, and cross-platform compatibility. This project demonstrates a scalable architecture and clean code principles, making it an excellent example of modern Flutter development.

---

## Features

- **Dynamic Home Screen**: Displays highlighted components with customizable titles, images, and descriptions.
- **State Management**: Implements `Bloc` for predictable state transitions and separation of concerns.
- **Cross-Platform Support**: Runs seamlessly on Android, iOS, Web, macOS, Linux, and Windows.
- **Customizable UI**: Uses reusable widgets and models for dynamic content rendering.
- **Asset Management**: Organized assets for images, icons, and other resources.

---

## Technical Details

- **Framework**: Flutter
- **State Management**: Bloc/Cubit
- **Language**: Dart
- **Build Tools**: Gradle (Android), Xcode (iOS), Flutter CLI
- **Testing**: Unit and widget testing with the `test` package
- **Dependency Management**: `pubspec.yaml`

---

## Project Structure
clone_elfie/ 
├── android/ # Android-specific files 
├── assets/ # Images, icons, and other resources 
├── ios/ # iOS-specific files 
├── lib/ # Main application code 
│ 
├── blocs/ # Bloc files for state management 
│ 
├── models/ # Data models 
│ 
├── screens/ # UI screens 
│ 
├── widgets/ # Reusable widgets 
│ 
└── utils/ # Utility functions and helpers 
├── test/ # Unit and widget tests 
├── pubspec.yaml # Dependency configuration 
└── README.md # Project documentation
---

## Architecture

The project follows a **Clean Architecture** approach:

1. **Presentation Layer**: Contains UI components and widgets.
2. **Business Logic Layer**: Managed by `Bloc` for state transitions.
3. **Data Layer**: Models and services for data handling.

### State Management

The application uses the `Bloc` pattern for state management. For example, in the `home_bloc.dart` file:

- **LoadingState**: Represents the loading phase.
- **LoadedState**: Represents the loaded data with `model` and `param`.

---

## How to Run

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd clone_elfie

2. Install dependencies
    flutter pub get
3. Run the app:
    flutter run
