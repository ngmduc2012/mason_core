
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';


final class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State({
    this.status = SubmissionStatusEnum.initial,
    this.user,
  });

  final SubmissionStatusEnum status;
  final CreateStudentUserRequestEntity? user;

  {{name.pascalCase()}}State copyWith({
    SubmissionStatusEnum? status,
    CreateStudentUserRequestEntity? user,
  }) {
    return {{name.pascalCase()}}State(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<dynamic> get props => [
    status, user,
  ];
}


sealed class {{name.pascalCase()}}Event {}
final class {{name.pascalCase()}} extends {{name.pascalCase()}}Event {}

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<{{name.pascalCase()}}>((event, emit) => on{{name.pascalCase()}}(emit));
  }

  Future<void> on{{name.pascalCase()}}(Emitter<void> emit) async {
    emit(state);
  }
}
