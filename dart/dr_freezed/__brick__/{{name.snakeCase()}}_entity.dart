/*
 Learn more: https://pub.dev/packages/freezed
 Generation online: https://app.quicktype.io/


 Step 1: add properties in follow: https://pub.dev/packages/freezed#creating-a-model-using-freezed
 Step 2: generate code by running
  flutter pub run build_runner build --delete-conflicting-outputs

 Nhược điểm: Sẽ không thể tự chỉnh convert json theo yêu cầu vd:
 { “id_name” : “” }  tương ứng với biến idName hoặc abcName. (Sử dụng Entity thuần json_serializable thay thế)

*/
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_core/dart_core.dart';

part '{{name.snakeCase()}}_entity.g.dart';
part '{{name.snakeCase()}}_entity.freezed.dart';

@freezed
class {{name.pascalCase()}}Entity with _${{name.pascalCase()}}Entity{

   const factory {{name.pascalCase()}}Entity({
        required int e1,
        String? e2
   }) = _{{name.pascalCase()}}Entity;

   factory {{name.pascalCase()}}Entity.fromJson(MyJsonMap json) => _${{name.pascalCase()}}EntityFromJson(json);

   factory {{name.pascalCase()}}Entity.fromJsonString(String jsonString) => _${{name.pascalCase()}}EntityFromJson(json.decode(jsonString) as  MyJsonMap);

   /*
   CAUTION | CAN NOT BUILD, don't un-comment
   String toRealJson() => jsonEncode(toJson());

   instead,
   {{name.pascalCase()}}Entity(...).toJson().toMyRealJson();
    */

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