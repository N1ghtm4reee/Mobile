import 'package:ex02/main.dart';
import 'package:ex02/widgets/calculator_keypad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('calculator shows its initial UI', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Calculator'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));

    final fields = tester.widgetList<TextField>(find.byType(TextField));
    expect(fields.map((field) => field.controller?.text), everyElement('0'));

    for (final label in ['AC', 'C', '/', '*', '+', '-', '=', '.']) {
      expect(find.text(label), findsOneWidget);
    }
  });

  testWidgets('keypad reports the pressed button', (WidgetTester tester) async {
    String? pressedButton;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CalculatorKeypad(
            onButtonPressed: (label) => pressedButton = label,
          ),
        ),
      ),
    );

    await tester.tap(find.text('7'));
    expect(pressedButton, '7');
  });
}
