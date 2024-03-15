import 'package:flutter/material.dart';

class Manrope extends StatelessWidget {
  const Manrope({super.key, required this.text, this.font, this.size, this.aling, this.color, this.maxLines, this.letterSpacing, this.overflow});

  final String text;
  final FontWeight? font;
  final double? size;
  final double? letterSpacing;
  final TextAlign? aling;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: aling,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "inter",
        fontWeight: font,
        fontSize: size,
        color: color,
        letterSpacing: letterSpacing,
        overflow: overflow,
      ),
      maxLines: maxLines,
    );
  }
}

