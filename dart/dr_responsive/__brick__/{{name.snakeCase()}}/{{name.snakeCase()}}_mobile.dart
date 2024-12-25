{{> header.md }}

part of '{{name.snakeCase()}}.dart';
class {{name.pascalCase()}}MobilePortrait extends StatelessWidget {
  const {{name.pascalCase()}}MobilePortrait({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: body,
    );
  }
}

class {{name.pascalCase()}}MobileLandscape extends StatelessWidget {
  const {{name.pascalCase()}}MobileLandscape({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 130,),
        Expanded(
          flex: 1180,
          child: body,),
        const Spacer(flex: 130,),
      ],
    );
  }
}
