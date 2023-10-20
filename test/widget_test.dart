import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

import 'package:flutter_app/main.dart'; // Import your main application

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp()); // Create and display the app widget

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget); // Check if '0' is found (visible)
    expect(find.text('1'), findsNothing);    // Check if '1' is not found (invisible)

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add)); // Simulate tapping the add icon
    await tester.pump(); // Trigger a frame update

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing); // Check if '0' is not found (invisible)
    expect(find.text('1'), findsOneWidget); // Check if '1' is found (visible)
  });
}
