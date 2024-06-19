import 'package:flutter/material.dart';

/// A widget that represents a single dot.
class SingleDot extends StatelessWidget {
  /// The size of the dot.
  final double size;

  /// The color of the dot.
  final Color color;

  /// The color of the optional border around the dot.
  final Color? borderColor;

  /// The width of the optional border around the dot.
  final double borderWidth;

  /// Creates a single dot widget.
  ///
  /// The [size] parameter specifies the diameter of the dot.
  /// The [color] parameter specifies the color of the dot.
  /// The [borderColor] parameter specifies the color of the optional border around the dot.
  /// The [borderWidth] parameter specifies the width of the optional border around the dot.
  const SingleDot({
    Key? key,
    this.size = 10.0,
    this.color = Colors.black,
    this.borderColor,
    this.borderWidth = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: borderColor != null ? Border.all(color: borderColor!, width: borderWidth) : null,
      ),
    );
  }
}
