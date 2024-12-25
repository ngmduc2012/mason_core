import 'package:{{name.snakeCase()}}_ui_core/artist/src/gradient.dart';

export 'src/color.dart';
export 'src/color_filter.dart';
export 'src/shadow.dart';
export 'src/style.dart';

class {{name.pascalCase()}}Artist{
  {{name.pascalCase()}}Artist._();

  static ${{name.pascalCase()}}Gradient gradient = const ${{name.pascalCase()}}Gradient();

}