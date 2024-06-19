import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shapes_widget/shapes_widget.dart';

void main() {
  testWidgets('Triangle widget has correct size and color', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Triangle(
            size: 50.0,
            color: Colors.green,
            isEquilateral: true,
            borderWidth: 2.0,
            borderColor: Colors.red,
          ),
        ),
      ),
    );

    final triangleFinder = find.byType(Triangle);
    expect(triangleFinder, findsOneWidget);

    final triangleWidget = tester.widget<Triangle>(triangleFinder);
    expect(triangleWidget.size, 50.0);
    expect(triangleWidget.color, Colors.green);
    expect(triangleWidget.isEquilateral, true);
    expect(triangleWidget.borderWidth, 2.0);
    expect(triangleWidget.borderColor, Colors.red);
  });
}
