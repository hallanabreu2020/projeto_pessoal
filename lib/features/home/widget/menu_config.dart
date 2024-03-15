import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';

class MenuConfig extends StatelessWidget {
  const MenuConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.fromLTRB(0, 10, 0, 10),
      child:  Row(
        children: [
          Icon(Icons.arrow_back_ios, size: 14),
          SizedBox(width: 5),
          Manrope(text: "Configurações", size: 20, font: FontWeight.w700)
        ],
      ),
    );
  }
}