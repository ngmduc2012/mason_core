/*
 Learn more: https://pub.dev/packages/json_serializable
 Generation online: https://app.quicktype.io/

 Step 1: add properties in follow: https://pub.dev/packages/json_serializable#example
 Step 2: generate code by running
  flutter pub run build_runner build --delete-conflicting-outputs
*/
import 'dart:convert';

import 'package:dart_core/dart_core.dart';
import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_entity.g.dart';
@JsonSerializable(explicitToJson: true)
class {{name.pascalCase()}}Entity{

   const {{name.pascalCase()}}Entity({

   })
   //Setup Object: https://dart.dev/codelabs/dart-cheatsheet#initializer-lists
   ;

   factory {{name.pascalCase()}}Entity.fromJson(MyJsonMap json) => _${{name.pascalCase()}}EntityFromJson(json);

   factory {{name.pascalCase()}}Entity.fromJsonString(String jsonString) => _${{name.pascalCase()}}EntityFromJson(json.decode(jsonString) as  MyJsonMap);

   MyJsonMap toJson() => _${{name.pascalCase()}}EntityToJson(this);

   //OR | {{name.pascalCase()}}Entity(...).toJson().toMyRealJson();
   String toRealJson() => jsonEncode(toJson());

   /// Handle for list data:
   static List<{{name.pascalCase()}}Entity> fromJsonToList(List data) => [for (final e in data) {{name.pascalCase()}}Entity.fromJson(e as MyJsonMap)];

   /*
   // Old
   static List<{{name.pascalCase()}}Entity>? fromJsonToListTypeJson(dynamic json) =>
   json == null ? null : List<{{name.pascalCase()}}Entity>.from((json as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as MyJsonMap)),);

   static List<{{name.pascalCase()}}Entity> fromJsonToListTypeString(String data) =>
   List<{{name.pascalCase()}}Entity>.from((json.decode(data) as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as MyJsonMap)),);
   */

   static List<dynamic>? toListJson(List<{{name.pascalCase()}}Entity>? list) =>
   list == null ? null : List<dynamic>.from(list.map((e) => e.toJson()));

   /*copyWith:
   final     :  A a = A(…a, name:  “ten a”)
   no final  :  A a,  a.name = “ten a”*/

   String get toPrint => jsonEncode(toJson()).myPrintStringJson;

   @override
   void noSuchMethod(Invocation invocation) {
      super.noSuchMethod(invocation);
      print('{{name.pascalCase()}}Entity non-existent member: ${invocation.memberName}');
   }

}

/*
Custom: Dành cho enum không phải thuộc tính String, int, null để lưu trữ

@JsonKey(
      toJson: _paramToJson,
      fromJson: _paramFromJson
)
final {{name.pascalCase()}}Enum pricingMode;


bool _paramToJson({{name.pascalCase()}}Enum paramValue) {
      return paramValue.value;
}
{{name.pascalCase()}}Enum _paramFromJson(bool paramValue) {
      return {{name.pascalCase()}}Enum.getEnumByValue(paramValue);
}

TimeOfDay
@JsonKey(
      toJson: myTimeOfDayToJson,
      fromJson: myJsonToTimeOfDay,
)
required TimeOfDay timeLimitStart,

Locale
@JsonKey(
      toJson: myLocaleToJson,
      fromJson: myJsonToLocale
)
required Locale language,

Duration
@JsonKey(
      fromJson: myDurationFromJson,
      toJson: myDurationToJson,
)
final Duration timeDifference;

*/

