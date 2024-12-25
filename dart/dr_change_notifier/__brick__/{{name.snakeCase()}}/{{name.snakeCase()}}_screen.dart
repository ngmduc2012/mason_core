
import 'package:flutter/material.dart';

/// Part I: Screen
class {{name.pascalCase()}} extends StatefulWidget {
  const {{name.pascalCase()}}({super.key, this.controller, this.autoDispose = true});

  final  {{name.pascalCase()}}Controller? controller;
  final bool autoDispose;

  @override
  State<{{name.pascalCase()}}> createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}> {

  late {{name.pascalCase()}}Controller controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? {{name.pascalCase()}}Controller();
    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  // update once properties is changed
  @override
  void didUpdateWidget({{name.pascalCase()}} oldWidget) {
    super.didUpdateWidget(oldWidget);
    // if (widget.path != oldWidget.path) {
    //
    // }
  }

  @override
    void dispose() {
    if(widget.autoDispose) controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // final ratio = context.dsgRatio;

    return const Text("ok");
  }
}
