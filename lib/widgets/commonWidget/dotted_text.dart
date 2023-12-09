import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';

class DottedText extends StatelessWidget {
  final Text widget;
  final Color dottedBodderColor;
  final double strokeWidth;
  const DottedText({
    super.key,
    required this.widget,
    this.dottedBodderColor = Colors.black,
    this.strokeWidth = 0.6,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 2,
        decoration: DottedDecoration(
            linePosition: LinePosition.bottom,
            color: dottedBodderColor,
            strokeWidth: strokeWidth,
            shape: Shape.line),
        child: widget);
  }
}
