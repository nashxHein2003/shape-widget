import 'dart:math';
import 'package:flutter/material.dart';

/// A simple customizable triangle widget.
class Triangle extends StatelessWidget {
  final double size;
  final Color color;
  final bool isEquilateral;
  final double borderWidth;
  final Color? borderColor;

  Triangle({
    this.size = 50.0,
    this.color = Colors.black,
    this.isEquilateral = true,
    this.borderWidth = 0.0,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: TrianglePainter(
        color: color,
        isEquilateral: isEquilateral,
        borderWidth: borderWidth,
        borderColor: borderColor,
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;
  final bool isEquilateral;
  final double borderWidth;
  final Color? borderColor;

  TrianglePainter({
    required this.color,
    required this.isEquilateral,
    required this.borderWidth,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Paint? borderPaint;

    if (borderColor != null) {
      borderPaint = Paint()
        ..color = borderColor!
        ..style = PaintingStyle.stroke
        ..strokeWidth = borderWidth;
    }

    Path path = Path();

    if (isEquilateral) {
      double height = size.height * (sqrt(3) / 2);
      path.moveTo(size.width / 2, 0);
      path.lineTo(size.width, height);
      path.lineTo(0, height);
    } else {
      path.moveTo(size.width / 2, 0);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }

    path.close();

    canvas.drawPath(path, paint);

    if (borderPaint != null) {
      canvas.drawPath(path, borderPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
