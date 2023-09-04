import 'package:get_it/get_it.dart';
import 'package:tree_view_example/core/domain/usecases/record_error_usecase.dart';

/// ambient variable to access the service locator
GetIt sl = GetIt.instance;

/// Initialize the service locator.
///
/// This should be called in main just after the widget binding is initialized.
Future<void> initServiceLocator() async {
  // Usecases
  sl.registerLazySingleton(RecordErrorUseCase.new);
}
