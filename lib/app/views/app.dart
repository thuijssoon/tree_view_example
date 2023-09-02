import 'package:flutter/material.dart';
import 'package:tree_view_example/features/graph/presentation/views/graph_page.dart';

/// {@template app}
/// The main app widget.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const GraphPage(),
    );
  }
}
