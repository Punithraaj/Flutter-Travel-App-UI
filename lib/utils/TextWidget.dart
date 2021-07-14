import 'package:flutter/material.dart';
import 'package:travel_ui/utils/constant.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final Color color;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  final String text;

  const TextWidget({
    this.size: 16,
    this.color: primaryColor,
    this.fontWeight: FontWeight.w600,
    this.overflow: TextOverflow.visible,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        // fontFamily: 'Roboto',
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
