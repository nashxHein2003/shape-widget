import 'dart:math';
import 'package:flutter/material.dart';

/// A simple customizable triangle widget.
class Triangle extends StatelessWidget {
  /// The size of the triangle (side length).
  final double size;

  /// The color of the triangle.
  final Color color;

  /// Whether the triangle should be equilateral (true) or isosceles (false).
  final bool isEquilateral;

  /// The width of the optional border around the triangle.
  final double borderWidth;

  /// The color of the optional border around the triangle.
  final Color? borderColor;

  /// Creates a triangle widget.
  ///
  /// The [size] parameter specifies the side length of the triangle.
  /// The [color] parameter specifies the color of the triangle.
  /// The [isEquilateral] parameter specifies whether the triangle should be equilateral (true) or isosceles (false).
  /// The [borderWidth] parameter specifies the width of the optional border around the triangle.
  /// The [borderColor] parameter specifies the color of the optional border around the triangle.
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

/// The custom painter for drawing the triangle.
class TrianglePainter extends CustomPainter {
  /// The color of the triangle.
  final Color color;

  /// Whether the triangle should be equilateral (true) or isosceles (false).
  final bool isEquilateral;

  /// The width of the optional border around the triangle.
  final double borderWidth;

  /// The color of the optional border around the triangle.
  final Color? borderColor;

  /// Creates a custom painter for drawing a triangle.
  ///
  /// The [color] parameter specifies the color of the triangle.
  /// The [isEquilateral] parameter specifies whether the triangle should be equilateral (true) or isosceles (false).
  /// The [borderWidth] parameter specifies the width of the optional border around the triangle.
  /// The [borderColor] parameter specifies the color of the optional border around the triangle.
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
