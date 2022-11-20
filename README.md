# clean_code_template

A Template to start coding Clean Code Flutter projects.

## Getting Started
### Folder structure:
├── core
│   ├── navigation
│   └── resources
│       ├── localization
│       └── theme
├── features
│   └── {{feature_name}}
│       ├── data
│       │   ├── datasources
│       │   └── repositories
│       ├── domain
│       │   ├── usecases
│       │   ├── entities
│       │   ├── repositories
│       │   └── params
│       └── presentation
│           ├── bloc
│           ├── pages
│           ├── routes
│           └── widgets
├── di.dart
├── app.dart
└── main.dart

### Feature structure:
#### "domain":
The core of your features, what is in core, should not change unless you have some change in the requirements of your application, it is the most sensitive part of your code, the entire app depends on it, so, it should be reliable and not change very often.
##### "usecases":
A UseCase is an action that you app should perform, "login", "signUp", "fetchSomething" and "updateSomething" are examples of use cases, they perform some kind of operation, they are the entrypoint of the presentation layer with the data layer.
##### "entities":
Entities are data objecs, they don't contain much logic, only data and @FromJson/@ToJson in case you are using freezed.
##### "params":
Contains Parameter classes, they are very simple data classes used to pass data to UseCases.
##### "repositories":
Contains interfaces/abstract classes of repositories, here you define what methods each repository should implement, if your usecases has a dependency in any repository, the dependency should be in the interface, not in the concrete implementation.

#### "data":
The data folder contains the outer layer of the application, it contains the concrete implementation of repositories and datasources.
##### "datasources":
Datasources are the classes in charge of actually getting data, either from the network or locally from the disk or memory.
##### "repositories":
Here is where you place the concrete implementations of the repositories defined in the domain, a repository should only orchestrate datasources, catch errors and manipulate the data (e.g. map a Map class into an entity). 

#### "presentation":
The presentation folder contains everything that involves the ui: pages, routes, widgets and events (handled by blocs).

## Packages
- **auto_route:**
    - Used for navigation.
- **equatable:**
    - Used for type equality in models, failures, parameters and any other data classes.
- **flutter_bloc:**
    - State Management.
- **flutter_gbx:**
    - Suite of useful and commonly used features and helpers.

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/core/resources/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
