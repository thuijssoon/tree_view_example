import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/app/views/app.dart';
import 'package:tree_view_example/features/graph/presentation/views/graph_page.dart';

void main() {
  group('App', () {
    testWidgets('renders GraphPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(GraphPage), findsOneWidget);
    });
  });
}
