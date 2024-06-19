import 'package:flutter/material.dart';

class SingleDot extends StatelessWidget {
  final double size;
  final Color color;
  final Color? borderColor;
  final double borderWidth;

  const SingleDot({
    super.key,
    this.size = 10.0,
    this.color = Colors.black,
    this.borderColor,
    this.borderWidth = 0.0,
  });

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
