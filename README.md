# Hello World

A small Flutter app built with Cupertino widgets, `provider` for state
management, and a feature-first project structure.

## Overview

The app currently renders a simple playlist-style home screen with:

- a Cupertino app shell
- a `HomeController` provided at the app boundary
- a `HomeFeed` that reads playlist state from Provider
- widget tests for the page, feed, and track row components

## Tech Stack

- Flutter
- Dart
- Provider
- `cupertino_native_better`

## Project Structure

```text
lib/
  app/
    app.dart
  features/
    home/
      controllers/
        home_controller.dart
      data/
        mock_tracks.dart
      models/
        track.dart
      view/
        home_page.dart
        widgets/
          home_feed.dart
          track_list_item.dart

test/
  features/
    home/
      view/
        home_page_test.dart
        widgets/
          home_feed_test.dart
          track_list_item_test.dart
  helpers/
    pump_app.dart
    pump_widget.dart
```

## Getting Started

### Prerequisites

- Flutter SDK installed and available on your `PATH`
- Xcode for iOS or Android Studio for Android development

### Install Dependencies

```bash
flutter pub get
```

### Run The App

```bash
flutter run
```

## Development Commands

Run static analysis:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

## State Management

The project uses `provider` with a simple `ChangeNotifier`-based controller.

- app-level dependency wiring lives in `lib/app/app.dart`
- feature state lives in `lib/features/home/controllers/home_controller.dart`
- UI widgets read state with Provider rather than owning the source of truth

This keeps the app simple while leaving room to grow without a large
architecture rewrite.

## Notes

- Generated build output is ignored by Git through `.gitignore`
- The current data source is local mock data intended for UI development
