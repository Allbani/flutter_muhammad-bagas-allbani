import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mini_project/screen/articel_screen/articel_screen.dart';

void main() {
  testWidgets(
    'Judul halaman harus Berita',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: ArticelScreen(),
      ));
      expect(find.text('Berita'), findsOneWidget);
    },
  );
}
