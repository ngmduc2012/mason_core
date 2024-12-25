
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:mockito/annotations.dart';

// Annotation which generates the {{name.snakeCase()}}_test.mocks.dart library and the Mock{{name.pascalCase()}} class.
@GenerateNiceMocks([MockSpec<{{name.pascalCase()}}>()])
import '{{name.snakeCase()}}_test.mocks.dart';

/*
  Learn more mockito: https://pub.dev/packages/mockito#lets-create-mocks
  *** Setup build.yaml for build_runner (packages): https://stackoverflow.com/a/68275812

  run:

  flutter pub run build_runner build
  # OR
  dart run build_runner build

*/
void main() {
  main{{name.pascalCase()}}();
}

void main{{name.pascalCase()}}(){
  group('{{name.pascalCase()}}', () {

    /// Remind comment on tested function: // #TESTED
    test('examle', () async {

      var {{name.camelCase()}} = Mock{{name.pascalCase()}}();

    });
  });
}
