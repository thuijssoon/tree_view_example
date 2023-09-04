import 'package:tree_view_example/app/service_locator.dart';
import 'package:tree_view_example/core/domain/usecases/record_error_usecase.dart';

/// Extension on [Object] to record an error.
extension RecordErrorExtension on Object {
  /// Record an error using the [RecordErrorUseCase].
  void recordError({
    Object? exception,
    Object? stackTrace,
    String? reason,
  }) {
    sl<RecordErrorUseCase>()(
      RecordErrorParams(
        exception: exception ?? this,
        stackTrace: stackTrace,
        reason: reason,
      ),
    );
  }
}
