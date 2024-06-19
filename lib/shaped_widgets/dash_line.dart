import 'package:flutter/material.dart';

/// A widget for drawing dashed lines.
///
/// This widget creates a line with dashes of specified length and gap.
///
/// Example:
///
/// ```dart
/// DashLine(
///   length: 100.0,
///   thickness: 2.0,
///   color: Colors.blue,
///   dashLength: 5.0,
///   dashGap: 3.0,
/// );
/// ```
class DashLine extends StatelessWidget {
  /// The length of the dash line.
  final double length;

  /// The thickness of the dash line.
  final double thickness;

  /// The color of the dash line.
  final Color color;

  /// The length of each dash.
  final double dashLength;

  /// The gap between each dash.
  final double dashGap;

  /// Creates a dash line widget.
  const DashLine({
    Key? key,
    this.length = 100.0,
    this.thickness = 2.0,
    this.color = Colors.black,
    this.dashLength = 5.0,
    this.dashGap = 3.0,
  }) : super(key: key);

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

/// Painter for the DashLine widget.
class DashPainter extends CustomPainter {
  /// The color of the dash line.
  final Color color;

  /// The length of each dash.
  final double dashLength;

  /// The gap between each dash.
  final double dashGap;

  /// The thickness of the dash line.
  final double thickness;

  /// Creates a dash painter.
  const DashPainter({
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
