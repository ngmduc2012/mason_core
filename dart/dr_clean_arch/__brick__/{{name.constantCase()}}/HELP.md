
## Concept
* Learn more about clean architecture: https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
* Follow architecture: https://pub.dev/packages/flutter_clean_architecture#usage
* Follow clean architecture with bloc: https://medium.com/@yamen.abd98/clean-architecture-in-flutter-mvvm-bloc-dio-79b1615530e1

## How to use ?
* STEP 0: Create feature
```
mason make dr_clean_arch -o pathTo/lib/features
```

* STEP 1: Create entity in {{name.snakeCase()}}/domain/entities
```
mason make dr_entity -o pathTo/{{name.snakeCase()}}/domain/entities/responses
mason make dr_freezed -o pathTo/{{name.snakeCase()}}/domain/entities/responses
```

* STEP 2: Create/edit repository {{name.snakeCase()}}/data/repositories
```
mason make dr_repository -o pathTo/{{name.snakeCase()}}/data/repositories
```

* STEP 3: Create use case {{name.snakeCase()}}/domain/usecases
```
mason make dr_usecase -o pathTo/{{name.snakeCase()}}/domain/usecases
```

* STEP 4: Using  
