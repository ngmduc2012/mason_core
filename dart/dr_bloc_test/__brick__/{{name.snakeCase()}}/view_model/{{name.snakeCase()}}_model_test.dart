import 'package:flutter_test/flutter_test.dart';
import 'package:snapshap/features/PRINTING/src.dart';

void main() {
  group('{{name.pascalCase()}}', ()
  {

    /// Remind comment on tested function: // #TESTED
    test('{{name.pascalCase()}}Enum at SCHOOL', () {
      var status = {{name.pascalCase()}}Enum.ok;
      expect(status.isOK, isTrue);
      expect(status.isNotOk, isFalse);
    });



  });
}
