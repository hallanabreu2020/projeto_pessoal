import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/widget/button_popup.dart';
import 'package:projeto_s/features/login/widget/button.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Align(alignment: Alignment.centerRight ,child: ButtonS(height: 40,onTap: () {ButtonPopUp().popUp(context, homeController, true);}, width: 150, text: 'Adicionar Periodo',)),
    );
  }


}


