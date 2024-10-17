import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advanced_layout/main.dart'; // Make sure this path is correct for your project structure.

void main() {
  testWidgets('BottomNavigationBar navigation test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that "Home page" is initially displayed.
    expect(find.text('Home page'), findsOneWidget);
    expect(find.text('Email page'), findsNothing);
    expect(find.text('Profile page'), findsNothing);

    // Tap the "Email" icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.email));
    await tester.pumpAndSettle();

    // Verify that "Email page" is now displayed.
    expect(find.text('Home page'), findsNothing);
    expect(find.text('Email page'), findsOneWidget);
    expect(find.text('Profile page'), findsNothing);

    // Tap the "Profile" icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify that "Profile page" is now displayed.
    expect(find.text('Home page'), findsNothing);
    expect(find.text('Email page'), findsNothing);
    expect(find.text('Profile page'), findsOneWidget);
  });
}
