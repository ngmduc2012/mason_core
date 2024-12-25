# {{name.snakeCase()}}

# I How to run app?

## 1.1 How to change develop mode?
* Step 1: (developer) change mode develop:
```dart
void main() {
  //...
  enviIsDevelop = true;
  //...
}
```

## 1.2 How to setup app?
* Step 1: run for setup package
```
flutter pub get
```
* Step 2: run for generate code in json serializable
```
flutter pub run build_runner build --delete-conflicting-outputs
```
## 1.3 Build | Debug
### 1.3.1 Way 1:
* Step 1: lib/main.dart
* Step 2: click start button.
### 1.3.2 Way 2:
* Step 1: run
```
flutter run 
flutter run -t lib/main/main_develop.dart
flutter run -t lib/main/main_staging.dart
```
[Learn more](https://stackoverflow.com/a/53003484)


## 1.4 Build | Release
* Step 1: run
```
For local server (developer)
flutter run  --release -t lib/main_develop.dart 

For test server (developer)
flutter run  --release -t lib/main_staging.dart 

For Release server
flutter run  --release 
```

* Step 3: (option) rename file
```
For MACOS
mv build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/{{name.snakeCase()}}_1.0.0.apk

For WINDOW 
move build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/{{name.snakeCase()}}_1.0.0.apk
```

## 1.5 Build file.apk | Release
* Step 1: run
```
flutter clean 

For local server (developer)
flutter build apk --release -t lib/main_develop.dart 

For test server (developer)
flutter build apk --release -t lib/main_staging.dart 

For Release server
flutter build apk --release 
```

* Step 4: (option) rename file
```
For MACOS
mv build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/{{name.snakeCase()}}_1.0.0.apk

For WINDOW 
move build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/{{name.snakeCase()}}_1.0.0.apk
```

## 1.6 build .abb
```
flutter build appbundle 

For MACOS
mv build/app/outputs/bundle/release/app-release.aab build/app/outputs/bundle/release/{{name.snakeCase()}}_1.0.0.aab

For WINDOW 
move build/app/outputs/bundle/release/app-release.aab build/app/outputs/bundle/release/{{name.snakeCase()}}_1.0.0.aab

```
[Learn more](https://docs.flutter.dev/deployment/android)



# II Git
## 2.1 Often used
* shortcut (XCode): control + V open command line
```

:q
git add .
git commit --amend
git push origin ft-wong -f
cd packages
git add .
git commit --amend
git push origin feature-snap -f
cd ..

git add .
git commit -am "1.0.0 | "
git push origin ft-base
cd packages
git add .
git commit -am "2.0.8 | "
git push origin feature-snap
cd ..

git checkout develop
git merge --no-ff ft-base
:qa
--allow-unrelated-histories
OR
git rebase ft-base 

[//]: # (git branch -d ft-base)
git push origin develop

git checkout master
git merge --no-ff develop
:qa
--allow-unrelated-histories
OR
git rebase develop 

[//]: # (git branch -d develop)

git add .
git commit -am "3.0.13 | "
git push origin master

git checkout ft-base

git tag -a v1.0.0 -am 'version 1.0.0'

```

## 2.2 Setup project
```
git branch master
git branch dev
git branch ft-base 
```