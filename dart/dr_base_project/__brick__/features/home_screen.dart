import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/helper/src.dart';
import 'package:ui_core/src.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MyLayout(
      body: Center(
        child: Text(
          "${OurInterpreter.welcomeBackNameApp("{{name.snakeCase()}}", ourNameApp)}",
        ),
      ),
    );
  }
}
