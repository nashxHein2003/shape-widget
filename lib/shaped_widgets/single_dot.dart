import 'package:flutter/material.dart';

/// A widget that represents a single dot.
///
/// This widget is commonly used to indicate a point or mark in a graphical user interface.
/// The dot can be customized with size, color, and an optional border.
///
/// Example:
///
/// ```dart
/// SingleDot(
///   size: 20.0,
///   color: Colors.blue,
///   borderColor: Colors.red,
///   borderWidth: 2.0,
///   gap: 7
/// );
/// ```
class SingleDot extends StatelessWidget {
  /// The size of the dot.
  final double size;

  /// The color of the dot.
  final Color color;

  /// The color of the optional border around the dot.
  final Color? borderColor;

  /// The width of the optional border around the dot.
  final double borderWidth;

  /// The Space of Front and Back of dot.
  final double gap;

  /// Creates a single dot widget.
  ///
  /// The [size] parameter specifies the diameter of the dot.
  /// The [color] parameter specifies the color of the dot.
  /// The [borderColor] parameter specifies the color of the optional border around the dot.
  /// The [borderWidth] parameter specifies the width of the optional border around the dot.
  /// The [gap] parameter specifies the horizontal gap around the dot.
  const SingleDot(
      {Key? key,
      this.size = 10.0,
      this.color = Colors.black,
      this.borderColor,
      this.borderWidth = 0.0,
      this.gap = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: gap),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: borderColor != null
              ? Border.all(color: borderColor!, width: borderWidth)
              : null,
        ),
      ),
    );
  }
}
