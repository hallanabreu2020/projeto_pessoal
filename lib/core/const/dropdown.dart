import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';


class DropdownButtonForm extends StatelessWidget {
  const DropdownButtonForm({super.key, required this.onTap, required this.value, required this.lists, this.initialValue, this.validator});
  final Function(String?) onTap;
  final String? value;
  final List<String> lists;
  final String? initialValue;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      validator: validator,
      icon: const Icon(
        Icons.arrow_downward,
        color: Color.fromARGB(0, 255, 193, 7),
      ),
      decoration: const InputDecoration(border: InputBorder.none),
      value: initialValue ?? value,
      onChanged: onTap,
      items: lists.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Manrope(
            text: value,
            color: const Color.fromARGB(255, 113, 113, 113),
            font: FontWeight.w500,
            size: 12,
          ),
        );
      }).toList(),
    );
  }
}

class DropdownButtonFormText extends StatelessWidget {
  const DropdownButtonFormText({super.key, required this.onTap, required this.value, required this.lists, required this.color, this.size, this.font, this.initialValue});
  final Function(String?) onTap;
  final String? value;
  final List<String> lists;
  final String? initialValue;
  final Color color;
  final double? size;
  final FontWeight? font;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: const SizedBox(),
      icon: const Icon(
        Icons.arrow_downward,
        color: Color.fromARGB(0, 255, 193, 7),
      ),
      value: initialValue ?? value,
      onChanged: onTap,
      items: lists.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Manrope(
            text: value,
            color: color,
            font: font ?? FontWeight.w500,
            size: size ?? 12,
          ),
        );
      }).toList(),
    );
  }
}



