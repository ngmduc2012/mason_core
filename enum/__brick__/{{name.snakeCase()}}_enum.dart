
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'code')
enum {{name.pascalCase()}}Enum {

  ok( 0, "example");

  const {{name.pascalCase()}}Enum( this.code, this.title);

  final int code;
  final String title;
}

extension {{name.pascalCase()}}EnumHelper on {{name.pascalCase()}}Enum {

   bool get isOkStatus => this == {{name.pascalCase()}}Enum.ok;

  String get interpret {
    switch (this) {
      case {{name.pascalCase()}}Enum.ok:
        return "example";
      default:
        return "";
    }
  }

  static String? getByCode(int? code){
    try {
      return {{name.pascalCase()}}Enum.values.firstWhere((element) => element.code == code,).interpret;
    } catch (e) {
      return null;
    }
  }

  static {{name.pascalCase()}}Enum? getEnumByCode(int? code){
    try {
      return {{name.pascalCase()}}Enum.values.firstWhere((element) => element.code == code,);
    } catch (e) {
      return null;
    }
  }

  static String? getByTitle(String? title){
    try {
      return {{name.pascalCase()}}Enum.values.firstWhere((element) => element.title == title,).interpret;
    } catch (e) {
      return null;
    }
  }

  static {{name.pascalCase()}}Enum? getByInterpret(String? interpret){
    try {
      return {{name.pascalCase()}}Enum.values.firstWhere((element) => element.interpret == interpret,);
    } catch (e) {
      return null;
    }
  }

  static List<String> get toListString => {{name.pascalCase()}}Enum.values.map((e) => e.interpret).toList();

  static List<String> toListStringRemoveAt(List<{{name.pascalCase()}}Enum> removeList){
    final listEnum = {{name.pascalCase()}}Enum.values.toList();
    for(final {{name.pascalCase()}}Enum e in removeList) {
      listEnum.remove(e);
    }

    return listEnum.map((e) => e.interpret).toList();
  }
}
