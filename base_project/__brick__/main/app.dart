
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{name.snakeCase()}}/helper/src.dart';
import 'package:{{name.snakeCase()}}/main/injection.dart';
import 'package:{{name.snakeCase()}}/router/src.dart';
import 'package:ui_core/src.dart';

/// run: flutter pub add flutter_localization
/// run: flutter pub add flutter_bloc

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     // TODO: Add provider of bloc
    //   ],
    //   child: const AppView(),
    // );
    return const AppView();
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {

  @override
  void initState() {
    super.initState();
    init();
  }
  bool isFirstTime = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: ourNameApp,
      routerConfig: ourRouter,
      themeMode: MyArtist.themeMode,
      theme: MyArtist.theme.lightTheme,
      darkTheme: MyArtist.theme.darkTheme,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: listLocale,
      builder: (context, child) {
        return FutureBuilder(
          future: Future(() async {
            if (isFirstTime) {
              await Future.delayed(const Duration(milliseconds: 1500), () {
                setState(() {
                  isFirstTime = false;
                });
              });
            }
            ourRouter.go(ourGoRouterHome);
          }),
          builder: (context, _) {
            return child ?? const SizedBox.shrink();
          },
        );
      },
    );
  }
}