import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_frontend_app/main.dart';

void main() {
  testWidgets('App initializes with Tasks screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Allow provider init microtasks (no heavy async awaited here).
    await tester.pumpAndSettle(const Duration(milliseconds: 100));

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('Tasks'), findsOneWidget);
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Pending'), findsOneWidget);
    expect(find.text('Completed'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
