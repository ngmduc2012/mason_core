import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:{{name.snakeCase()}}/features/src.dart';


/// run: flutter pub add go_router
final ourRouter = GoRouter(
  navigatorKey: myNavigatorKey,
  debugLogDiagnostics: kDebugMode ,
  routes: [
    GoRoute(
      path: "/",
      // pageBuilder: (context, state) {
      //   return ourAnimationPage3(const WelcomeScreen(), key: state.pageKey);// return const SettingCameraScreen();
      // },
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const RootScreen(),
      // routes: [
      //   GoRoute(
      //     path: "pathToExampleScreen",
      //     builder: (context, state) =>
      //         ExampleScreen(),
      //   ),
      // ],
    ),
  ],
);

/// Learn more: https://pub.dev/documentation/go_router/latest/topics/Redirection-topic.html
FutureOr<String?> forceLogin(BuildContext context, GoRouterState state) async {

  // final isSignedIn = context.read<AuthBloc>().state.authenticated;
  // if (isSignedIn) {
  //   return null;
  // } else {
  //   return ourGoRouterAuthLogin;
  // }
}

extension GoRouterContext on BuildContext{
  Uri get currentGoRouter => GoRouter.of(this).routeInformationProvider.value.uri;
}

/// *** CAUTION: Using animation make input text is too slow in the wear device.
CustomTransitionPage<void> ourAnimationPage1( Widget child , {LocalKey? key}){
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: const Duration(milliseconds: 150),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      // Change the opacity of the screen using a Curve based on the the animation's
      // value
      return FadeTransition(
        opacity:
        CurveTween(curve: Curves.easeInOut).animate(animation),
        child: child,
      );
    },
  );
}
CustomTransitionPage<void> ourAnimationPage2( Widget child , {LocalKey? key}){
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    barrierDismissible: true,
    barrierColor: Colors.black38,
    opaque: false,
    transitionDuration: Duration.zero,
    transitionsBuilder: (_, __, ___, Widget child) => child,
  );
}
CustomTransitionPage<void> ourAnimationPage3( Widget child , {LocalKey? key}){
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    barrierDismissible: true,
    barrierColor: Colors.black38,
    opaque: false,
    transitionDuration: const Duration(milliseconds: 350),
    reverseTransitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
