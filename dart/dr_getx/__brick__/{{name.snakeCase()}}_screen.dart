
import 'package:mob_ui_core/src.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class {{name.pascalCase()}}Screen extends GetView<{{name.pascalCase()}}Controller>{
const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<{{name.pascalCase()}}Controller>(
        builder: (controller) =>
            MyLayout(body: Text("ok")));
  }
}
