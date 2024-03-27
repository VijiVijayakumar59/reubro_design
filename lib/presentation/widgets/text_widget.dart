import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  const TextWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontWeight,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
        wordSpacing: 1,
      ),
    );
  }
}
