import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/core/extensions/record_error_extension.dart';

void main() {
  group('RecordErrorExtension', () {
    test('recordError is added to Object', () {
      // Arrange
      final subject = Object();
      // Act, assert
      expect(subject.recordError, returnsNormally);
    });
  });
}
