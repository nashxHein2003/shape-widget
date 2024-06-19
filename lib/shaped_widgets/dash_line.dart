import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  final double length;
  final double thickness;
  final Color color;
  final double dashLength;
  final double dashGap;

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

class DashPainter extends CustomPainter {
  final Color color;
  final double dashLength;
  final double dashGap;
  final double thickness;

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
