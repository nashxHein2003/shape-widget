import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shapes_widget/shapes_widget.dart';

void main() {
  testWidgets('Dot widget has correct size and color', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleDot(
            size: 20.0,
            color: Colors.blue,
            borderColor: Colors.red,
            borderWidth: 2.0,
          ),
        ),
      ),
    );

    final dotFinder = find.byType(SingleDot);
    expect(dotFinder, findsOneWidget);

    final dotWidget = tester.widget<SingleDot>(dotFinder);
    expect(dotWidget.size, 20.0);
    expect(dotWidget.color, Colors.blue);
    expect(dotWidget.borderColor, Colors.red);
    expect(dotWidget.borderWidth, 2.0);
  });
}
