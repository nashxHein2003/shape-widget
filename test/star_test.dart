import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shapes_widget/shapes_widget.dart';

void main() {
  testWidgets('Star widget renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Star(
              size: 100.0,
              color: Colors.yellow,
              numPoints: 5,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(Star), findsOneWidget);

    final starFinder = find.byType(Star);
    expect(starFinder, findsOneWidget);
    final starWidget = tester.widget(starFinder) as Star;
    expect(starWidget.size, equals(100.0));
    expect(starWidget.color, equals(Colors.yellow));
    expect(starWidget.numPoints, equals(5));
  });
}
