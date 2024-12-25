{{> header.md }}

import 'dart:convert';
import 'package:flutter_core/flutter_core.dart';


/*
Generate model: https://app.quicktype.io/

{{name.pascalCase()}}BaseEntity<T>{
    final T? message;
}
*/

class {{name.pascalCase()}}BaseEntity {
  final MyJsonMap? data;
  final String? message;
  final bool? status;

  {{name.pascalCase()}}BaseEntity({
     this.data,
     this.message,
     this.status,
  });

  {{name.pascalCase()}}BaseEntity copyWith({
    MyJsonMap? data,
    String? message,
    bool? status,
  }) => {{name.pascalCase()}}BaseEntity(
        data: data ?? this.data,
        message: message ?? this.message,
        status: status ?? this.status,
      );


  factory {{name.pascalCase()}}BaseEntity.fromJson(MyJsonMap json) => {{name.pascalCase()}}BaseEntity(
    data: (json["data"]) as MyJsonMap?,
    message: (json["message"]) as String?,
    status: (json["status"]) as bool?,
  );

  factory {{name.pascalCase()}}BaseEntity.fromJsonString(String jsonString) => {{name.pascalCase()}}BaseEntity.fromJson(json.decode(jsonString) as  MyJsonMap);

  MyJsonMap toJson() => {
    "data": data,
    "message": message,
    "status": status,
  };

  /// Compare 2 objects
  @override
  bool operator ==(Object other) =>
    identical(this, other)
    || other is {{name.pascalCase()}}BaseEntity
    && runtimeType == other.runtimeType
    && data == other.data
    && message == other.message
    && status == other.status;

  @override
  int get hashCode => data.hashCode ^ message.hashCode ^ status.hashCode;


  /// Handle for list data:
  static List<{{name.pascalCase()}}BaseEntity> fromJsonToList(List data) => [for (final e in data) {{name.pascalCase()}}BaseEntity.fromJson(e as MyJsonMap)];

  /*
  // Old
  static List<{{name.pascalCase()}}BaseEntity> fromJsonToListTypeJson(dynamic json) => List<{{name.pascalCase()}}BaseEntity>.from((json as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}BaseEntity.fromJson(e as MyJsonMap)),);

  static List<{{name.pascalCase()}}BaseEntity> fromJsonToListTypeString(String data) => List<{{name.pascalCase()}}BaseEntity>.from((json.decode(data) as List<Object?>).map((e) => e == null ? null : {{name.pascalCase()}}BaseEntity.fromJson(e as MyJsonMap)),);
  */

  static List<dynamic>? toListJson(List<{{name.pascalCase()}}BaseEntity>? list) => list == null ? null : List<dynamic>.from(list.map((e) => e.toJson()));
}