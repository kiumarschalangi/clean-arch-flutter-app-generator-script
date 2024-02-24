# Flutter Clean Architecture App Creator

## Introduction
Welcome to the Flutter Clean Architecture App Creator! This Bash script is designed to simplify the process of creating a Flutter app with a clean architecture template. It not only generates a new Flutter app but also structures the `lib` folder using clean architecture principles.

# Requirements
- [Flutter](https://flutter.dev/docs/get-started/install) must be installed on your system.
  - Follow the [official installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.

# Project Structure
The script creates the following folders and files within the `lib` directory:

- `lib/app` and `lib/sample_module`: Organizes the app into distinct modules.
- `lib/app/{constants,di,extensions,core}`: Folders for app-specific constants, dependency injection, extensions, and core functionalities.
- `lib/sample_module/{presentation,data,domain}`: Segregates code into layers for presentation, data, and domain.
- `lib/sample_module/data/{dto,mapper,repository_impl,service,source}`: Manages data-related components.
- `lib/sample_module/domain/{entity,repository,use_case}`: Focuses on domain logic.
- `lib/sample_module/presentation/{bloc,view}`: Handles UI and business logic separation.
- `lib/sample_module/presentation/view/{page,components}`: Divides UI into pages and components.
- `lib/sample_module/data/service/sample_module_endpoints.dart`: Placeholder for API endpoints.
- `lib/sample_module/data/mapper/sample_module_mapper.dart`: Template for data mapping.

## Usage
1. Run the script in your terminal.
   ```bash
   ./init-flutter-clean-arch.sh

# Author
This script was written by [Kiumars Chaharlangi](https://github.com/kiumarschalangi). Connect with me on [LinkedIn](https://www.linkedin.com/in/kiumars-chaharlangi).

# Acknowledgments
Thank you for choosing the Flutter Clean Architecture App Creator. Feel free to provide feedback or contribute to the [GitHub repository](https://github.com/kiumarschalangi/flutter-clean-arch-app-creator).

Happy coding!
