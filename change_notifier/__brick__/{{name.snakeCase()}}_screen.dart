
import 'package:flutter/material.dart';

class {{name.pascalCase()}} extends StatefulWidget {
  const {{name.pascalCase()}}({super.key, this.controller});

  final  {{name.pascalCase()}}Controller? controller;

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

  @override
    void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Text("ok");
  }
}
