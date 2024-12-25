
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:{{name.snakeCase()}}/helper/src.dart';
import 'package:{{name.snakeCase()}}/bootstrap/bootstrap.dart';
import 'package:{{name.snakeCase()}}/router/src.dart';

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
    //     //   BlocProvider (
    //     //    create: (BuildContext context) => AuthBloc(),
    //     //  ),
    //   ],
    //   child: const AppView(),
    // );
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  // bool isFirstTime = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      showPerformanceOverlay: showPerformanceOverlay,
      title: ourNameApp,
      routerConfig: ourRouter,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: listLocale,
      builder: (context, child) {
        return  FutureBuilder(
          future: Future<bool>(() async {
            return await Future.delayed(const Duration(milliseconds: 1000), () async {
              if(isFirstTime) {
                await init();

              }
              // setState(() {
              //   isFirstTime = false;
              // });
              return true;
            }).whenComplete((){
              if(isFirstTime){
                isFirstTime = false;
                ourRouter.go(ourGoHome);
              }
            });

            // }

          }),
          builder: (context, _) {
            // final delay = _.data;
            // if((delay ?? false) && isFirstTime){
            //   // myLog.warning(1);
            //   isFirstTime = false;
            //   ourRouter.go(ourGoRouterSnap);
            // }
            return
              // MyLocaleListener(
              // child: MyConsoleLog(
              //   controller: consoleLogController,
              //   children: [
              child ?? const SizedBox.shrink()
            // ,
            //     ],
            //   ),
            // )
                ;
          },

        );
      },

      /// Debug
      // debugShowCheckedModeBanner: false,
      // showPerformanceOverlay: true,
    );
  }
}

bool isFirstTime = true;