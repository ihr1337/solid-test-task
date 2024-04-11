import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_task/home_page.dart';

void main() {
  testWidgets(
    'Test HomePage widget for background color change',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomePage(),
        ),
      );

      final scaffold = find.byType(Scaffold);
      final appBar = find.byType(AppBar);

      final initialAppBarColor = tester.widget<AppBar>(appBar).backgroundColor;
      final initialScaffoldColor =
          tester.widget<Scaffold>(scaffold).backgroundColor;

      await tester.tap(find.byType(GestureDetector));

      await tester.pump();

      final newScaffoldColor =
          tester.widget<Scaffold>(scaffold).backgroundColor;
      final newAppBarColor = tester.widget<AppBar>(appBar).backgroundColor;

      expect(initialScaffoldColor != newScaffoldColor, true);
      expect(initialAppBarColor != newAppBarColor, true);
    },
  );
}
