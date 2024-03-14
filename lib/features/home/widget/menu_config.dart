import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';

class MenuConfig extends StatelessWidget {
  const MenuConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.arrow_back_ios, size: 20),
        Manrope(text: "Configurações", size: 20, font: FontWeight.w700)
      ],
    );
  }
}