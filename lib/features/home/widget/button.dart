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
      child: Align(alignment: Alignment.centerRight ,child: ButtonS(font: FontWeight.w600 ,size: 12 ,height: 30 ,onTap: () {ButtonPopUp().popUp(context, homeController, true);}, width: 120, text: 'Adicionar Periodo')),
    );
  }


}


