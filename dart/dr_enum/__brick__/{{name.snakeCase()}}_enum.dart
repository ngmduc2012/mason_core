
import 'package:json_annotation/json_annotation.dart';

/*
Learn more | https://pub.dev/packages/json_serializable#enums
Enum       | https://dart.dev/language#enums
Comparable | https://dart.dev/libraries/dart-core#comparing-objects

for generate data in json :https://pub.dev/packages/json_serializable#:~:text=If%20you%20are%20annotating%20an%20enhanced%20enum%2C%20you%20can%20use%20JsonEnum.valueField%20to%20specify%20the%20field%20to%20use%20for%20the%20serialized%20value.
E.g: Enum {{name.camelCase()}} => json is 0 by code. And from json 0 => Enum {{name.camelCase()}}

Option run (if USE in json)

flutter pub run build_runner build --delete-conflicting-outputs

 */
@JsonEnum(valueField: 'code')
enum {{name.pascalCase()}}Enum
     // implements Comparable<{{name.pascalCase()}}Enum>
{

  notWorkingReady( 0, "notWorkingReady"),
  loading( 1, "loading"),
  notWorkingSuccess( 3, "notWorkingSuccess"),
  notWorkingFailure( 2, "notWorkingFailure");

  // @override
  // int compareTo(PaddingWhiteLineEditEnum other) => code - other.code;

  const {{name.pascalCase()}}Enum( this.code, this.title);

  final int code;
  final String title;

  bool get isLoading => this == {{name.pascalCase()}}Enum.loading;

  String get interpret => switch(this) {
    {{name.pascalCase()}}Enum.notWorkingReady => "Translate notWorkingReady",
    {{name.pascalCase()}}Enum.loading => "Translate loading",
    _ => "Translate other",
  };

 /*
  // Old
  String get interpret {
    switch (this) {
      case {{name.pascalCase()}}Enum.notWorkingReady:
        return "notWorkingReady";
      case {{name.pascalCase()}}Enum.loading:
        return "loading";
      default:
        return "";
    }
  }*/

  /*
  sort list enum
  List<{{name.pascalCase()}}Enum> {{name.camelCase()}}EnumList = [...{{name.camelCase()}}TypesForShow, event.{{name.camelCase()}}Enum];
      {{name.camelCase()}}EnumList.sort((a, b) => a.code.compareTo(b.code),);
   */

  factory {{name.pascalCase()}}Enum.getEnumByCode(int? code) {
    try {
      return {{name.pascalCase()}}Enum.values.firstWhere((element) => element.code == code,);
    } catch (e) {
      // rethrow;
      return {{name.pascalCase()}}Enum.notWorkingReady;
    }
  }

  ///Learn more: https://dart.dev/language/records
  static ({{{name.pascalCase()}}Enum? getEnum , String? string})? getByCode(int? code){
  try {
    final e = {{name.pascalCase()}}Enum.values.firstWhere((element) => element.code == code,);
    return (getEnum: e, string: e.interpret);
    } catch (e) {
      return null;
    }
  }

  static ({{{name.pascalCase()}}Enum? getEnum , String? string})? getByIndex(int? index){
    try {
      final e = {{name.pascalCase()}}Enum.values.firstWhere((element) => element.index == index,);
      return (getEnum: e, string: e.interpret);
    } catch (e) {
      return null;
    }
  }

  static ({{{name.pascalCase()}}Enum? getEnum , String? string})? getByTitle(String? title){
    try {
      final e = {{name.pascalCase()}}Enum.values.firstWhere((element) => element.title == title,);
      return (getEnum: e, string: e.interpret);
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

extension {{name.pascalCase()}}EnumHelper on {{name.pascalCase()}}Enum {

}


