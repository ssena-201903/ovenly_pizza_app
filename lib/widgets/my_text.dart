import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;
  final Color? color;

  const MyText({
    super.key,
    required this.text,
    this.style,
    this.fontSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? TextStyle(fontSize: fontSize, color: color),
    );
  }
}
