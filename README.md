# Flutter POS - Menu Resto

Flutter POS application using BLoC pattern and REST API integration with Dio.

---

## Features

- Fetch menu restaurant data from API
- State management using Flutter BLoC
- REST API integration using Dio
- JSON model parsing
- Repository pattern implementation

---

## Tech Stack

- Flutter
- Flutter BLoC
- Dio
- REST API

---


## Architecture

```text
UI → Event → Bloc → Repository → API
                      ↓
                    State
                      ↓
                     UI
```

---

## API Configuration

Base URL:

```dart
_dio.options.baseUrl = 'http://127.0.0.1:8000/api';
```

File location:

```text
lib/core/api_client.dart
```

---

## API Endpoint

### Get All Menu

```http
GET /menu-resto
```

---

## Installation

### Clone Repository

```bash
git clone https://github.com/gandul-jago/flutter_pos.git
```

### Enter Project Folder

```bash
cd flutter_pos
```

### Install Dependencies

```bash
flutter pub get
```

### Run Project

```bash
flutter run
```

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter

  flutter_bloc:
  dio:
```

---

## Notes

### Localhost Setup

If using Android Emulator, replace:

```text
127.0.0.1
```

with:

```text
10.0.2.2
```

Example:

```dart
_dio.options.baseUrl = 'http://10.0.2.2:8000/api';
```

---

## Current Progress

- [x] API Integration
- [x] Repository Pattern
- [x] BLoC State Management
- [x] JSON Parsing
- [ ] Menu List UI
- [ ] Create Menu
- [ ] Update Menu
- [ ] Delete Menu

---
