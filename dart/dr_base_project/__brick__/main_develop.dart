import 'package:flutter/material.dart';
import 'package:flutter_core/testing/envi.dart';
import 'package:{{name.snakeCase()}}/bootstrap/src.dart';

void main() {
  ourEnvi = EnviEnum.develop;
  enviIsDevelop = true;
  myMain(() {
    setup();
    runApp(const App());
  });
}
