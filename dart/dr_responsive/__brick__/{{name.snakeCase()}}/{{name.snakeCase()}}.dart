{{> header.md }}
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

{{> help.md }}

part '{{name.snakeCase()}}_mobile.dart';
part '{{name.snakeCase()}}_tablet.dart';
part 'part_screen/{{name.snakeCase()}}_body.dart';
class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {

    final body = const {{name.pascalCase()}}Body();
    return ScreenTypeLayout.builder(
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (context) => {{name.pascalCase()}}MobilePortrait(body: body,),
        landscape: (context) => {{name.pascalCase()}}MobileLandscape(body: body,),
      ),
      tablet: (_) =>OrientationLayoutBuilder(
        portrait: (context) => {{name.pascalCase()}}TabletPortrait(body: body,),
        landscape: (context) => {{name.pascalCase()}}TabletLandscape(body: body,),
      ),
    );
  }
}
