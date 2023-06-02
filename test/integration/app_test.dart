import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'main.dart';

class MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

void main() {
  testWidgets('Firebase messaging initializes', (WidgetTester tester) async {
    final mockFirebaseMessaging = MockFirebaseMessaging();

    when(mockFirebaseMessaging.getToken())
        .thenAnswer((_) async => 'test_token');

    when(mockFirebaseMessaging.onMessage)
        .thenAnswer((_) => const Stream<RemoteMessage>.empty());

    when(mockFirebaseMessaging.onMessageOpenedApp)
        .thenAnswer((_) => const Stream<RemoteMessage>.empty());

    await tester.pumpWidget(MyApp(
      firebaseMessaging: mockFirebaseMessaging,
    ));

    verify(mockFirebaseMessaging.getToken()).called(1);
    verify(mockFirebaseMessaging.onMessage).called(1);
    verify(mockFirebaseMessaging.onMessageOpenedApp).called(1);
  });
}
