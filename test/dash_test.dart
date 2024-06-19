import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shapes_widget/shapes_widget.dart';

void main() {
  testWidgets('Dash widget has correct length and color',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DashLine(
            length: 200.0,
            thickness: 2.0,
            color: Colors.blue,
            dashLength: 10.0,
            dashGap: 5.0,
          ),
        ),
      ),
    );

    final dashFinder = find.byType(DashLine);
    expect(dashFinder, findsOneWidget);

    final dashWidget = tester.widget<DashLine>(dashFinder);
    expect(dashWidget.length, 200.0);
    expect(dashWidget.thickness, 2.0);
    expect(dashWidget.color, Colors.blue);
    expect(dashWidget.dashLength, 10.0);
    expect(dashWidget.dashGap, 5.0);
  });
}
