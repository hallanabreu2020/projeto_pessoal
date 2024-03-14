import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/model/itens_model.dart';
import 'package:projeto_s/features/home/widget/body_popup.dart';

class ButtonPopUp{
    popUp(BuildContext context, HomeController homeController, bool contr,{Iten? iten}){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: BodyPopUp(homeController: homeController, iten: iten, contr: contr)
        );
      },
    );
  }
}