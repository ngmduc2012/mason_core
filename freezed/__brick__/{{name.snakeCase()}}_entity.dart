/* Run:
  flutter pub run build_runner build --delete-conflicting-outputs
*/
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_entity.g.dart';
part '{{name.snakeCase()}}_entity.freezed.dart';

@freezed
class {{name.pascalCase()}}Entity with _${{name.pascalCase()}}Entity{

      const factory {{name.pascalCase()}}Entity({
           required int e1,
           String? e2
      }) = _{{name.pascalCase()}}Entity;

      factory {{name.pascalCase()}}Entity.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}EntityFromJson(json);

      factory {{name.pascalCase()}}Entity.fromJsonString(String jsonString) => _${{name.pascalCase()}}EntityFromJson(json.decode(jsonString) as  Map<String, dynamic>);

      static List<{{name.pascalCase()}}Entity>? fromJsonToListTypeJson(dynamic json) =>
      json == null ? null : List<{{name.pascalCase()}}Entity>.from((json as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as Map<String, dynamic>)),);

      static List<{{name.pascalCase()}}Entity> fromJsonToListTypeString(String data) =>
      List<{{name.pascalCase()}}Entity>.from((json.decode(data) as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}Entity.fromJson(e as Map<String, dynamic>)),);

      static List<dynamic>? toListJson(List<{{name.pascalCase()}}Entity>? list) =>
      list == null ? null : List<dynamic>.from(list.map((e) => e.toJson()));

}

