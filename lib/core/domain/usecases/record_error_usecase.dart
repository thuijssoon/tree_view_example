import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';

/// {@template record_error_use_case}
/// Record errors either to the console or to an external service.
/// {@endtemplate}
class RecordErrorUseCase {
  /// Execute the usecase.
  FutureOr<void> call(RecordErrorParams params) async {
    // TODO(thuijssoon): Implement Logging Error in this body,
    // like Sentry of Firebase Crashlytics http://sentry.io
    log(
      params.reason ?? params.exception.toString(),
      name: 'ERROR',
      stackTrace: params.stackTrace is StackTrace?
          ? params.stackTrace as StackTrace?
          : StackTrace.fromString(params.stackTrace.toString()),
    );
  }
}

/// {@template record_error_params}
/// Parameters used by the [RecordErrorUseCase].
/// {@endtemplate}
class RecordErrorParams extends Equatable {
  /// {@macro record_error_params}
  const RecordErrorParams({
    required this.exception,
    this.stackTrace,
    this.reason,
  });

  /// Th exception to record.
  final Object exception;

  /// The stack trace to record.
  final Object? stackTrace;

  /// The reason for the error.
  final String? reason;

  @override
  List<Object?> get props => [exception, stackTrace, reason];
}
