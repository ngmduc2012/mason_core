{{> header.md }}
/*
Learn more: https://bloclibrary.dev/architecture/
WARMING: Equatable not working good with list

Run:
  flutter pub run build_runner build --delete-conflicting-outputs
*/

part of '{{name.snakeCase()}}_bloc.dart';
/// Part I: State
// BlocSubject + State
// Learn more: https://bloclibrary.dev/naming-conventions/#single-class
@JsonSerializable(explicitToJson: true)
final class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State({
    this.user,
  })
  // : Setup Object: https://dart.dev/codelabs/dart-cheatsheet#initializer-lists
  ;

  // Default value
  static const {{name.pascalCase()}}State origin = {{name.pascalCase()}}State();

  // @JsonKey(
  //   includeFromJson: false,
  //   includeToJson: false
  // )
  final String? user;

  {{name.pascalCase()}}State copyWith({
    String? user,
    // User? Function()? user,
  }) {
  return {{name.pascalCase()}}State(
   user: user ?? this.user,
   // user: user != null ? user() : this.user,
  );
  }

  @override
  List<dynamic> get props => [
    user,
  ];
  
  factory {{name.pascalCase()}}State.fromJson(MyJsonMap json) => _${{name.pascalCase()}}StateFromJson(json);

  MyJsonMap toJson() => _${{name.pascalCase()}}StateToJson(this);

  @override
  String toString() {
    return '''{{name.pascalCase()}}State  ${toJson().myPrintMapJson}''';
  }
}

/// Part II: Event
// Learn more: https://bloclibrary.dev/naming-conventions/#anatomy
// BlocSubject + Noun (optional) + Verb (event)
sealed class {{name.pascalCase()}}Event
// extends ReplayEvent
{
  const {{name.pascalCase()}}Event();
}
final class {{name.pascalCase()}}Pressed extends {{name.pascalCase()}}Event {
    const {{name.pascalCase()}}Pressed();
    // final String something;
    // const {{name.pascalCase()}}Pressed({required this.something});
}