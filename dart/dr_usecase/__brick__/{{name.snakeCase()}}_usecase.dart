{{> header.md }}
// import 'package:flutter_core/base/usecase.dart';

/*
Learn more: https://pub.dev/packages/flutter_clean_architecture#:~:text=Usecases,of%20application%20change
Learn more about "call" | https://dart.dev/language/callable-objects
Learn more about extension type | https://dart.dev/language/extension-types

How to use:

await {{name.pascalCase()}}UseCase(repository)(
        {{input_type.pascalCase()}}(
          example1:  ,
        ),
      );

 */

extension type {{name.pascalCase()}}UseCase({{repository_type.pascalCase()}} repository) {

Future<{{output_type.pascalCase()}}> call({{input_type.pascalCase()}} request) => repository.{{name.camelCase()}}(request);
}

/*
// Old

OPTION: typedef {{name.pascalCase()}}Request = ({ String email,  String password});
await {{name.pascalCase()}}UseCase(repository)((
            email: event.userName,
            password: event.password,
      ));

// class {{name.pascalCase()}}UseCase implements UseCase<{{output_type.pascalCase()}}, {{input_type.pascalCase()}}>{
class {{name.pascalCase()}}UseCase with UseCase<{{output_type.pascalCase()}}, {{input_type.pascalCase()}}>{

  final {{repository_type.pascalCase()}} repository;

  {{name.pascalCase()}}UseCase(this.repository);

  @override
  Future<{{output_type.pascalCase()}}> call({{input_type.pascalCase()}} request) async {
    return repository.{{name.camelCase()}}(request);
  }
}
*/

