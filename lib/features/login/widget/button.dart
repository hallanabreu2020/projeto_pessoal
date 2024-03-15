import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';

class ButtonS extends StatelessWidget {
  const ButtonS({super.key, this.font ,this.size ,required this.onTap, required this.width, required this.text, this.height = 50, this.color = const Color(0xff0F278B)});

  final double width;
  final Function() onTap;
  final String text;
  final double height;
  final Color color;
  final double? size;
  final FontWeight? font;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(200)
        ),
        child: Center(child: Manrope(text: text, color: Colors.white, size: size, font: font)),
      ),
    );
  }
}