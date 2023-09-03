import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/core/domain/usecases/record_error_usecase.dart';

void main() {
  group('RecordErrorUsecase', () {
    RecordErrorUseCase createSubject() {
      return RecordErrorUseCase();
    }

    group('constructor', () {
      test('works correctly', () {
        // Arrange, act, assert
        expect(
          createSubject,
          returnsNormally,
        );
      });
    });

    group('call', () {
      test('works correctly', () async {
        // Arrange
        final subject = createSubject();
        // Act, assert
        expect(
          () async {
            await subject(
              RecordErrorParams(
                exception: Exception(),
                stackTrace: StackTrace.current,
                reason: 'reason',
              ),
            );
          },
          returnsNormally,
        );
        expect(
          () async {
            await subject(
              RecordErrorParams(
                exception: Exception(),
                stackTrace: 'stackTrace',
                reason: 'reason',
              ),
            );
          },
          returnsNormally,
        );
      });
    });
  });

  group('RecordErrorParams', () {
    final exception = Exception();
    final stackTrace = StackTrace.current;
    const reason = 'reason';

    RecordErrorParams createSubject() {
      return RecordErrorParams(
        exception: exception,
        stackTrace: stackTrace,
        reason: reason,
      );
    }

    group('constructor', () {
      test('works correctly', () {
        // Arrange, act, assert
        expect(
          createSubject,
          returnsNormally,
        );
      });
    });

    test('supports value equality', () {
      // Arrange, act, assert
      expect(
        createSubject(),
        equals(createSubject()),
      );
    });

    test('has the correct props', () {
      // Arrange, act, assert
      final subject = createSubject();
      expect(
        subject.props,
        equals([
          exception,
          stackTrace,
          reason,
        ]),
      );
    });
  });
}
