import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:tree_view_example/core/helpers/app_bloc_observer.dart';

/// Bootstrap the app
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // @todo(thuijssoon) Add cross-flavor configuration here

  runApp(await builder());
}
