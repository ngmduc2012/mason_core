> [!TIP]
> Preview on [Chrome](https://dillinger.io/)


# I. Mason
## 1.1 E.g Create mason with name "dr_screen":
* Step 1: Open terminal and run
```
cd /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/packages/mason_core
```
> [!TIP]
> How to get path?
> select mason_core folder and press: Ctrl/Command + shift + C
> or press right mouse on mason_core folder and select copy path.

* Step 2: run
```
mason new dr_screen -o dart/
```
* Step 3: add new mason on mason.yaml file

```
  dr_screen:
    path: dart/dr_screen
```

* Step 4: create your file in __brick__ folder.
* Step 5: costume your file [follow](https://pub.dev/packages/mason_cli#quick-start:~:text=try%20it%20out.-,Built%2Din%20Lambdas,-Mason%20supports%20a).
> 	HelloWorld	{{name.pascalCase()}}
>	hello_world	{{name.snakeCase()}}
>   helloWorld  {{name.camelCase()}}
>   Hello World {{name}}
>   ...
* Step 6: run after every changing is done
```
mason upgrade
```



## 1.2 E.g Use mason with name screen:
* Step 1: Open terminal and run
```
cd /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/packages/mason_core
```
> [!TIP]
> How to get path?
> select mason_core folder and press: Ctrl/Command + shift + C
> or press right mouse on mason_core folder and select copy path.

* Step 2: run
```
mason make screen -o /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/lib/features/SETTING/presentation/views
```
[Learn more](https://pub.dev/packages/mason_cli#custom-output-directory)

## 1.3 Update mason
* Step 1: Open terminal and run
```
cd /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/packages/mason_core
```
> [!TIP]
> How to get path?
> select mason_core folder and press: Ctrl/Command + shift + C
> or press right mouse on mason_core folder and select copy path.

* Step 2: run
```
mason update 
```

## 1.4 Setup mason in new project
* Step 1: install mason [Visit](https://pub.dev/packages/mason_cli#installation)
```
dart pub global activate mason_cli
```

* Step 2: Open terminal and run
```
cd /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/packages/mason_core
```
> [!TIP]
> How to get path?
> select mason_core folder and press: Ctrl/Command + shift + C
> or press right mouse on mason_core folder and select copy path.

* Step 3: run
```
mason upgrade -g
```

## 1.5 Turnoff Dart analysis (Tắt kiểm tra lỗi code)
* Step 1: add this lines in analysis_options.yaml file
```
exclude:
  -  packages/core_mason/**
```
* Step 2: restart IDE

### Learn every thing from [mason_cli](https://pub.dev/packages/mason_cli)

# II Brick


## 2.1 Publishing mason on https://brickhub.dev/
* Step 1: Open terminal and run
```
cd /Users/ducmng12/Desktop/flutter_project/FlutterPhotoBooth/packages/mason_core
```
> [!TIP]
> How to get path?
> select mason_core folder and press: Ctrl/Command + shift + C
> or press right mouse on mason_core folder and select copy path.

* Step 2: login | ngmduc2012@gmail.com
```
mason login
mason logout
```
* Step 3: edit brick 
brick.yaml
LICENSE
README.md

* Step 4: publish
```
mason publish -C dart/dr_base_model
mason publish -C dart/dr_base_project
mason publish -C dart/dr_bloc
mason publish -C dart/dr_bloc_test
mason publish -C dart/dr_change_notifier
mason publish -C dart/dr_class
mason publish -C dart/dr_class_test
mason publish -C dart/dr_clean_arch
mason publish -C dart/dr_dashbook
mason publish -C dart/dr_entity
mason publish -C dart/dr_enum
mason publish -C dart/dr_folder
mason publish -C dart/dr_folder_package
mason publish -C dart/dr_freezed
mason publish -C dart/dr_getx
mason publish -C dart/dr_getx
mason publish -C dart/dr_plugin
mason publish -C dart/dr_repository
mason publish -C dart/dr_responsive
mason publish -C dart/dr_screen
mason publish -C dart/dr_unit_test
mason publish -C dart/dr_usecase
mason publish -C dart/dr_widget_test
mason publish -C dart/dr_ui_core

mason publish -C markdown/md_help

mason publish -C swift/sw_class
mason publish -C swift/sw_enum
mason publish -C swift/sw_struct
```
* Step 5: Check on web
https://registry.brickhub.dev