

import 'package:helper_package/base/usecase.dart';

class {{name.pascalCase()}}UseCase implements UseCase<{{output_type.pascalCase()}}, {{input_type.pascalCase()}}>{

  final {{repository_type.pascalCase()}} repository;

  {{name.pascalCase()}}UseCase(this.repository);

  @override
  Future<{{output_type.pascalCase()}}> call({{input_type.pascalCase()}} request) async {
    return repository.{{name.camelCase()}}(request);
  }
}