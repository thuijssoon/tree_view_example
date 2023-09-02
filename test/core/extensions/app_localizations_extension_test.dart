import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tree_view_example/core/extensions/app_localizations_extension.dart';

void main() {
  testWidgets('l10n should be added to context', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Material(child: Container()),
      ),
    );
    final BuildContext context = tester.element(find.byType(Container));

    // Act, assert
    expect(context.l10n.appTitle, equals('TreeView Example'));
  });
}
