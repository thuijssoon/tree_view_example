import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tree_view_example/app/app.dart';
import 'package:tree_view_example/core/extensions/record_error_extension.dart';

/// Staging flavor.
Future<void> main() async {
  runZonedGuarded(
    () {
      F.flavor = Flavor.staging;

      WidgetsFlutterBinding.ensureInitialized();

      bootstrap(() => const App());
    },
    (error, stackTrace) => error.recordError(stackTrace: stackTrace),
  );
}
