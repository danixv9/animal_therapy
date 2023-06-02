import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:animal_therapy/screens/chat_screen.dart';

void main() {
  testWidgets('ChatScreen has a title and a message input field', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: ChatScreen()));

    // Verify that our app has a title.
    expect(find.text('Animal Therapy Chat'), findsOneWidget);

    // Verify that our app has a message input field.
    expect(find.byType(TextField), findsOneWidget);
  });
}
