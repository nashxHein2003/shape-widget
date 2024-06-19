import 'dart:math';
import 'package:flutter/material.dart';

/// A widget that represents a star shape.
class Star extends StatelessWidget {
  /// The size of the star.
  final double size;

  /// The color of the star.
  final Color color;

  /// The number of points of the star.
  final int numPoints;

  /// Creates a star widget.
  ///
  /// The [size] parameter specifies the diameter of the circumscribed circle around the star.
  /// The [color] parameter specifies the color of the star.
  /// The [numPoints] parameter specifies the number of points of the star (default is 5).
  const Star({
    Key? key,
    this.size = 50.0,
    this.color = Colors.black,
    this.numPoints = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: StarPainter(
        color: color,
        numPoints: numPoints,
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  final Color color;
  final int numPoints;

  StarPainter({
    required this.color,
    required this.numPoints,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    double radius = size.width / 2;
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    double angle = pi / numPoints;
    double rotation = -pi / 2; // Start drawing from the top

    Path path = Path();
    for (int i = 0; i < numPoints * 2; i++) {
      double currentRadius = (i % 2 == 0) ? radius / 2 : radius;
      double x = centerX + currentRadius * cos(rotation);
      double y = centerY + currentRadius * sin(rotation);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
      rotation += angle;
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
