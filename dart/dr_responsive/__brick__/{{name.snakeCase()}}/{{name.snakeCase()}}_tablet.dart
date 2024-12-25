{{> header.md }}

part of '{{name.snakeCase()}}.dart';
class {{name.pascalCase()}}TabletPortrait extends StatelessWidget {
  const {{name.pascalCase()}}TabletPortrait({super.key, required this.body});
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


class {{name.pascalCase()}}TabletLandscape extends StatelessWidget {
  const {{name.pascalCase()}}TabletLandscape({super.key, required this.body});
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
