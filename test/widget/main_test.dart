import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:animal_therapy/main.dart';

void main() {
  testWidgets('MyHomePage has a title and a button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AnimalTherapyApp());

    // Verify that our app has a title.
    expect(find.text('Animal Therapy'), findsOneWidget);

    // Verify that our app has a button.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
