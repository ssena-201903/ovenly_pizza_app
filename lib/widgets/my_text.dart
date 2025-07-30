import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const MyText({
    super.key,
    required this.text,
    this.style,
    this.fontSize,
    this.color,
    this.fontWeight, 
    this.textAlign
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ?? TextStyle(
        fontSize: fontSize, 
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
