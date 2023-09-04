import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/bootstrap.dart';
import 'package:tree_view_example/core/helpers/app_bloc_observer.dart';

void main() {
  group('bootstrap', () {
    test('should add the app bloc observer', () async {
      // Assert
      expect(Bloc.observer, isNot(isA<AppBlocObserver>()));

      // Arrange, act
      await bootstrap(() {
        return Container();
      });

      // Assert
      expect(Bloc.observer, isA<AppBlocObserver>());
    });
  });
}
