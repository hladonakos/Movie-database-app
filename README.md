# 🎬 Movie Database App

A modern, cross-platform movie database application built with Flutter, allowing users to browse, search, and view detailed information about movies.


## ✨ Features

- 🔍 Search movies by title
- 📋 Browse popular and latest movies
- ⭐ View detailed movie information (ratings, descriptions, release dates)
- 🎭 Filter by genres
- 💾 Offline support with caching
- 🌙 Dark/Light theme support
- 📱 Responsive design for all screen sizes
- ❤️ Favorite movies list
- 🎥 Watch trailers

=======
## 📸 Screenshots

<p align="center">
  <img src="screenshots/Screenshot from 2025-12-11 21-04-23.png" width="250" alt="Home Screen"/>
  <img src="screenshots/Screenshot from 2025-12-11 20-40-11.png" width="250" alt="Popular Movies"/>
  <img src="screenshots/Screenshot from 2025-12-11 20-40-41.png" width="250" alt="Movie Details"/>
</p>

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Riverpod
- **API:** The Movie Database (TMDB) API
- **Architecture:** Clean Architecture
- **Local Storage:** Hive
- **Networking:** Dio
- **Navigation:** AutoRoute
- **Code Generation:** Freezed, JSON Serializable

## 📁 Project Structure

```
lib/
├── config/           # Configuration files (API keys, constants)
├── core/            # Core utilities and base classes
│   ├── error/       # Error handling
│   ├── network/     # Network utilities
│   └── theme/       # App theming
├── data/            # Data layer
│   ├── models/      # Data models 
│   ├── repositories/# Repository implementations
│   └── datasources/ # Remote & Local data sources 
├── domain/          # Business logic layer
│   ├── entities/    # Domain entities
│   ├── repositories/# Repository interfaces
│   └── usecases/    # Business use cases 
├── presentation/    # UI layer
│   ├── pages/       # Screen widgets
│   ├── widgets/     # Reusable widgets
│   ├── providers/   # Riverpod providers
│   └── routes/      # AutoRoute navigation
└── main.dart        # Application entry point
```

## 📦 Key Dependencies

<<<<<<< HEAD
=======
yaml

>>>>>>> 81476a5 (Add app screenshots and update readme)
```yaml
dependencies:
  # State Management
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.5
  
  # Networking
  dio: ^5.4.0
  
  # Local Storage
  hive_flutter: ^1.1.0
  
  # Functional Programming
  fpdart: ^1.1.0
  
  # Code Generation
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0
  
  # UI
  cached_network_image: ^3.3.1
  shimmer: ^3.0.0
  
  # Navigation
  auto_route: ^9.2.2

dev_dependencies:
  # Code Generation
  build_runner: ^2.4.8
  freezed: ^2.4.7
  json_serializable: ^6.8.0
  riverpod_generator: ^2.4.0
  auto_route_generator: ^9.0.0
  
  # Testing
  mocktail: ^1.0.3
```

<<<<<<< HEAD
=======
## 🏗️ Architecture

This project follows **Clean Architecture** principles with three main layers:

- **Presentation Layer:** UI components, widgets, and state management
- **Domain Layer:** Business logic, entities, and use cases
- **Data Layer:** API integration, local storage, and repositories



## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

