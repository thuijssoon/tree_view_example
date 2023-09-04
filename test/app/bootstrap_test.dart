import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/bootstrap.dart';
import 'package:tree_view_example/core/helpers/app_bloc_observer.dart';

void main() {
  group('bootstrap', () {
    late void Function(Widget widget) testMethod;
    late bool testMethodCalled;

    setUp((){
      testMethod = (Widget widget) {
        testMethodCalled = true;
      };
      testMethodCalled = false;
    });

    test('should add the app bloc observer', () async {
      // Assert
      expect(Bloc.observer, isNot(isA<AppBlocObserver>()));

      // Arrange, act
      await bootstrap(
        () {
          return Container();
        },
        testMethod,
      );

      // Assert
      expect(Bloc.observer, isA<AppBlocObserver>());
    });

    test('should call runMethod', () async {
      // Assert
      expect(testMethodCalled, isFalse);

      // Arrange, act
      await bootstrap(
          () {
        return Container();
      },
      testMethod,
      );

      // Assert
      expect(testMethodCalled, isTrue);
    });
  });
}
