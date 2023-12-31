import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:tree_view_example/core/helpers/app_bloc_observer.dart';

/// Bootstrap the app
Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
  void Function(Widget) runMethod,
) async {
  Bloc.observer = const AppBlocObserver();

  // @TODO(thuijssoon): Add cross-flavor configuration here

  runMethod(await builder());
}
