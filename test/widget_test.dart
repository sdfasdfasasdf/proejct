// Basic smoke test for the Forma AI app.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:forma_ai/main.dart';

void main() {
  testWidgets('Home page renders Forma AI branding', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Forma AI'), findsWidgets);
    expect(find.text('Your AI starting point'), findsOneWidget);
    expect(find.byIcon(Icons.auto_awesome), findsOneWidget);
  });
}
