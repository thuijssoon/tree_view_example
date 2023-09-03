import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/flavor.dart';

void main() {
  group('FlavorConfig', () {
    group('value', () {
      FlavorConfig<String> createSubject() {
        return const FlavorConfig<String>(
          dev: 'dev',
          staging: 'staging',
          prod: 'prod',
          fallback: 'fallback',
        );
      }

      test('should return the correct value for dev', () {
        // Arrange
        F.flavor = Flavor.dev;
        final subject = createSubject();
        // Act, assert
        expect(subject.value, equals('dev'));
      });
      test('should return the correct value for staging', () {
        // Arrange
        F.flavor = Flavor.staging;
        final subject = createSubject();
        // Act, assert
        expect(subject.value, equals('staging'));
      });
      test('should return the correct value for prod', () {
        // Arrange
        F.flavor = Flavor.prod;
        final subject = createSubject();
        // Act, assert
        expect(subject.value, equals('prod'));
      });
      test('should return the fallback value if value in current flavor = null',
          () {
        // Arrange
        const subject = FlavorConfig<String>(
          dev: null,
          staging: null,
          prod: null,
          fallback: 'fallback',
        );
        // Act, assert
        F.flavor = Flavor.dev;
        expect(subject.value, equals('fallback'));

        F.flavor = Flavor.staging;
        expect(subject.value, equals('fallback'));

        F.flavor = Flavor.prod;
        expect(subject.value, equals('fallback'));
      });

      test(
          'should throw an assertion error if any flavor value is null and '
          'the fallback value is null', () {
        // Arrange
        F.flavor = Flavor.dev;
        // Act, assert
        expect(
          () {
            FlavorConfig<String>(
              dev: null,
              prod: 'prod',
              staging: 'staging',
            );
          },
          throwsAssertionError,
        );
      });
    });
  });
}
