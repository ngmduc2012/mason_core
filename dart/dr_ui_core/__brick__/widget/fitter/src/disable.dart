import 'package:flutter/cupertino.dart';
import 'package:ui_core/src.dart';


class {{name.pascalCase()}}Disable extends StatelessWidget {

  final bool enable;
  final Widget child;

  const {{name.pascalCase()}}Disable({
    super.key,
    this.enable = true,
    required this.child,});

  @override
  Widget build(BuildContext context) {
    return MyAnimatedOpacity(
        opacity:  enable ? 1 : 0.3,
        child: AbsorbPointer(
          absorbing: !enable,
          child: child,),);
  }
}
