import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/service_locator.dart';
import 'package:tree_view_example/core/domain/usecases/record_error_usecase.dart';

void main() {
  group('initServiceLocator', () {
    initServiceLocator();

    test('should make sl global variable available', () {
      // Arrange, act, assert
      expect(sl, isNotNull);
    });

    test('should register usecases', () {
      // Arrange, act, assert
      expect(sl<RecordErrorUseCase>(), isNotNull);
    });
  });
}
