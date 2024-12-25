

import 'package:flutter/material.dart';
import 'package:ui_core/src.dart';

import 'package:web_ui_core/web_ui_core.dart';

extension {{name.pascalCase()}}ColorContext on BuildContext{

  Color get white => isDarkMode ? {{name.pascalCase()}}Color.black : {{name.pascalCase()}}Color.white;
  Color get black => isDarkMode ? {{name.pascalCase()}}Color.white : {{name.pascalCase()}}Color.black;

  Color get noColor => Colors.transparent;

}