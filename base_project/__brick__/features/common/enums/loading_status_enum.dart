
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'code')
enum LoadingStatusEnum {

  initial( 0, "initial"),
  inProgress( 1, "inProgress"),
  success( 2, "success"),
  failure( 3, "failure"),
  canceled( 4, "canceled");

  const LoadingStatusEnum( this.code, this.title);

  final int code;
  final String title;
}

extension LoadingStatusEnumHelper on LoadingStatusEnum {

  bool get isInitial => this == LoadingStatusEnum.initial;

  bool get isInProgress => this == LoadingStatusEnum.inProgress;

  bool get isSuccess => this == LoadingStatusEnum.success;

  bool get isFailure => this == LoadingStatusEnum.failure;

  bool get isCanceled => this == LoadingStatusEnum.canceled;

  bool get isInProgressOrSuccess => isInProgress || isSuccess;

  String get interpret {
    switch (this) {
      case LoadingStatusEnum.initial:
        return "initial";
      default:
        return "";
    }
  }

  static String? getByCode(int? code){
    try {
      return LoadingStatusEnum.values.firstWhere((element) => element.code == code,).interpret;
    } catch (e) {
      return null;
    }
  }

  static LoadingStatusEnum? getEnumByCode(int? code){
    try {
      return LoadingStatusEnum.values.firstWhere((element) => element.code == code,);
    } catch (e) {
      return null;
    }
  }

  static String? getByTitle(String? title){
    try {
      return LoadingStatusEnum.values.firstWhere((element) => element.title == title,).interpret;
    } catch (e) {
      return null;
    }
  }

  static LoadingStatusEnum? getByInterpret(String? interpret){
    try {
      return LoadingStatusEnum.values.firstWhere((element) => element.interpret == interpret,);
    } catch (e) {
      return null;
    }
  }

  static List<String> get toListString => LoadingStatusEnum.values.map((e) => e.interpret).toList();

  static List<String> toListStringRemoveAt(List<LoadingStatusEnum> removeList){
    final listEnum = LoadingStatusEnum.values.toList();
    for(final LoadingStatusEnum e in removeList) {
      listEnum.remove(e);
    }

    return listEnum.map((e) => e.interpret).toList();
  }
}
