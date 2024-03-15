import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight font_weight;
  const AppText(
      {super.key,
      required this.size,
      required this.text,
      required this.color,
      required this.font_weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: font_weight,
      ),
    );
  }
}
