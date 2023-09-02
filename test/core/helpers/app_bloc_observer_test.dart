import 'package:bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:tree_view_example/core/helpers/app_bloc_observer.dart';

import 'app_bloc_observer_test.mocks.dart';

@GenerateMocks([BlocBase, Change])
void main() {
  group('AppBlocObserver', () {
    AppBlocObserver createSubject() {
      return const AppBlocObserver();
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

    test('onChange', () {
      // Arrange
      final subject = createSubject();
      final bloc = MockBlocBase<dynamic>();
      final change = MockChange<dynamic>();

      // Act, assert
      expect(() {
        subject.onChange(bloc, change);
      }, returnsNormally,);
    });

    test('onError', () {
      // Arrange
      final subject = createSubject();
      final bloc = MockBlocBase<dynamic>();

      // Act, assert
      expect(() {
        subject.onError(bloc, Object(), StackTrace.current);
      }, returnsNormally,);
    });
  });
}
