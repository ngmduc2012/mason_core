/* Run:
  flutter pub run build_runner build --delete-conflicting-outputs
*/
import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_entity.g.dart';
@JsonSerializable(explicitToJson: true)
class {{name.pascalCase()}}Entity{


      {{name.pascalCase()}}Entity({});

      factory {{name.pascalCase()}}Entity.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}EntityFromJson(json);

      factory {{name.pascalCase()}}Entity.fromJsonString(String jsonString) => _${{name.pascalCase()}}EntityFromJson(json.decode(jsonString) as  Map<String, dynamic>);

      Map<String, dynamic> toJson() => _${{name.pascalCase()}}EntityToJson(this);

      static List<{{name.pascalCase()}}Entity>? fromJsonToListTypeJson(dynamic json) =>
      json == null ? null : List<{{name.pascalCase()}}Entity>.from((json as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as Map<String, dynamic>)),);

      static List<{{name.pascalCase()}}Entity> fromJsonToListTypeString(String data) =>
      List<{{name.pascalCase()}}Entity>.from((json.decode(data) as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as Map<String, dynamic>)),);

      static List<dynamic>? toListJson(List<{{name.pascalCase()}}Entity>? list) =>
      list == null ? null : List<dynamic>.from(list.map((e) => e.toJson()));

      /*copyWith:
      final     :  A a = A(…a, name:  “ten a”)
      no final  :  A a,  a.name = “ten a”*/

}

