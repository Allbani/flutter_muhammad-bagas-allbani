import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_alta/screens/contact_create.dart';

void main() {
  testWidgets('Contact Create has title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: ContactCreate()));

    expect(find.text('Add Number'), findsOneWidget);
    expect(find.text('Contact Create'), findsOneWidget);
  });
}
