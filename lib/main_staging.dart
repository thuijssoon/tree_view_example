import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tree_view_example/app/app.dart';
import 'package:tree_view_example/app/service_locator.dart';
import 'package:tree_view_example/core/extensions/record_error_extension.dart';

/// Staging flavor.
Future<void> main() async {
  await runZonedGuarded(
    () async {
      F.flavor = Flavor.staging;

      WidgetsFlutterBinding.ensureInitialized();

      await initServiceLocator();

      await bootstrap(() => const App(), runApp);
    },
    (error, stackTrace) => error.recordError(stackTrace: stackTrace),
  );
}
