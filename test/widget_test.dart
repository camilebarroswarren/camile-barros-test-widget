import 'package:design/component/HelperText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'main_app.dart';

void main() {
  testWidgets('HelperText has a TextButton with an Icon',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TestAppWidget(
          body: HelperText(
            text: 'Clique',
          ),
        ),
      ),
    );

    expect(find.text('Clique'), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.byIcon(Icons.ads_click), findsOneWidget);
  });
}
