# Planty App

Mobile Developer Test.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** (version 3.10.4 or higher)
  - Download from [flutter.dev](https://flutter.dev/docs/get-started/install)
  - Verify installation: `flutter --version`
- **Dart SDK** (comes with Flutter)
- **Git** for cloning the repository
- **IDE** (VS Code, Android Studio, or IntelliJ IDEA) with Flutter extensions
- **Android Studio** (for Android development) or **Xcode** (for iOS development on macOS)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/thing-code/planty-mobile-dev-test.git "planty"
cd planty
```

### 2. Install Dependencies

Install all Flutter packages and dependencies:

```bash
flutter pub get
```

### 3. Generate Code

This project uses code generation for:
- Router generation (`go_router_builder`)
- Asset generation (`flutter_gen_runner`)

Run the code generator:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Or use watch mode for automatic regeneration during development:

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 4. Run the Application

```bash
flutter run
```

## Project Structure

Folder-First Structure for small project:

```
lib/
├── main.dart              # Application entry point
├── extensions/            # Dart extensions (e.g., string extensions)
├── gen/                   # Generated code (assets, etc.)
├── models/                # Data models and entities
├── routers/               # App routing configuration
├── screens/               # Screen/Page widgets
├── themes/                # App themes and styling
└── widgets/               # Reusable widget components
```

## Troubleshooting

### Common Issues

1. **Build Runner Errors**
   - If you encounter conflicts, run: `flutter pub run build_runner build --delete-conflicting-outputs`

2. **Missing Assets**
   - Ensure assets are properly configured in `pubspec.yaml`
   - Run `flutter pub get` again

3. **Flutter Version Issues**
   - Ensure you're using Flutter SDK 3.10.4 or higher
   - Check with: `flutter --version`

4. **Device Not Found**
   - For Android: Start an emulator from Android Studio or connect a physical device
   - For iOS: Start a simulator from Xcode
   - List devices: `flutter devices`

## Additional Commands

- **Clean build**: `flutter clean && flutter pub get`
- **Check for issues**: `flutter analyze`
- **Format code**: `flutter format .`
- **Run tests**: `flutter test`
