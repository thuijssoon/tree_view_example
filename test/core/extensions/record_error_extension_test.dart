import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:tree_view_example/core/domain/usecases/record_error_usecase.dart';
import 'package:tree_view_example/core/extensions/record_error_extension.dart';

void main() {
  group('RecordErrorExtension', () {
    test('recordError is added to Object', () {
      // Arrange
      final subject = Object();
      // Setup the service locator
      GetIt.instance.registerLazySingleton(RecordErrorUseCase.new);
      // Act, assert
      expect(subject.recordError, returnsNormally);
    });
  });
}
