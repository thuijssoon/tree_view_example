import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/app.dart';
import 'package:tree_view_example/app/configuration.dart';

void main() {
  group('AppConfig', () {
    test('should initialize config variables', () {
      // Arrange, act, assert
      expect(AppConfig.autoStringifyEquatable, isNotNull);
    });

    group('init', () {
      test('should set EquatableConfig.stringify', () {
        // Assert
        expect(EquatableConfig.stringify, isTrue);

        // Act
        F.flavor = Flavor.prod;
        AppConfig.init();

        // Assert
        expect(EquatableConfig.stringify, isFalse);
      });
    });
  });
}
