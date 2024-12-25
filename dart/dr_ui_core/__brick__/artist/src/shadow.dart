import 'package:flutter/material.dart';

import 'package:web_ui_core/web_ui_core.dart';

extension {{name.pascalCase()}}ShadowContext on BuildContext{

  BoxShadow dropShadowPurple(
      { double blurRadius = 8,}) =>
      BoxShadow(
        offset: const Offset(0, 4),
        blurRadius: blurRadius,
        color: black.withOpacity(0.3626),
        spreadRadius: 0
      );

  Shadow get dropShadowBlackForText =>
      Shadow(
        offset: const Offset(0, 1.8999993801116943),
        blurRadius: 12.824995040893555,
        color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1433),
      );

}
