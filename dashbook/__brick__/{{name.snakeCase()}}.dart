

import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/src.dart';


extension {{name.pascalCase()}}DashBook on Dashbook {
  void add{{name.pascalCase()}}DashBook() {
    storiesOf('{{name.pascalCase()}}')
        .decorator(CenterDecorator())
        .add(
      '{{name.pascalCase()}}',
          (c) => {{name.pascalCase()}}(
      ),
      info:
      """
Ghi chú: 

      """,
      pinInfo: true,
    );
  }
}
