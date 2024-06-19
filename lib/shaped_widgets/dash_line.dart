import 'package:flutter/material.dart';

/// A widget that draws a dashed line.
class DashLine extends StatelessWidget {
  /// The length of the dashed line.
  final double length;

  /// The thickness of the dashed line.
  final double thickness;

  /// The color of the dashed line.
  final Color color;

  /// The length of each dash segment.
  final double dashLength;

  /// The gap between each dash segment.
  final double dashGap;

  /// Creates a dashed line widget.
  ///
  /// The [length] parameter specifies the total length of the dashed line.
  /// The [thickness] parameter specifies the thickness of the dashed line.
  /// The [color] parameter specifies the color of the dashed line.
  /// The [dashLength] parameter specifies the length of each dash segment.
  /// The [dashGap] parameter specifies the gap between each dash segment.
  DashLine({
    this.length = 100.0,
    this.thickness = 2.0,
    this.color = Colors.black,
    this.dashLength = 5.0,
    this.dashGap = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(length, thickness),
      painter: DashPainter(
        color: color,
        dashLength: dashLength,
        dashGap: dashGap,
        thickness: thickness,
      ),
    );
  }
}

/// The custom painter for drawing the dashed line.
class DashPainter extends CustomPainter {
  /// The color of the dashed line.
  final Color color;

  /// The length of each dash segment.
  final double dashLength;

  /// The gap between each dash segment.
  final double dashGap;

  /// The thickness of the dashed line.
  final double thickness;

  /// Creates a custom painter for drawing a dashed line.
  ///
  /// The [color] parameter specifies the color of the dashed line.
  /// The [dashLength] parameter specifies the length of each dash segment.
  /// The [dashGap] parameter specifies the gap between each dash segment.
  /// The [thickness] parameter specifies the thickness of the dashed line.
  DashPainter({
    required this.color,
    required this.dashLength,
    required this.dashGap,
    required this.thickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashLength, 0),
        paint,
      );
      startX += dashLength + dashGap;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
