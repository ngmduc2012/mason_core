import 'package:go_router/go_router.dart';
import 'package:nailpop_pro_kiosk/features/src.dart';


/// run: flutter pub add go_router
final ourRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
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
