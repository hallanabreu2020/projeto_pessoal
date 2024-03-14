import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/model/itens_model.dart';
import 'package:projeto_s/features/home/widget/body_popup_add.dart';
import 'package:projeto_s/features/home/widget/body_popup_edit.dart';

class BodyPopUp extends StatelessWidget {
  const BodyPopUp({super.key, required this.homeController, this.iten, required this.contr});

  final HomeController homeController;
  final Iten? iten;
  final bool contr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Visibility(
        visible: contr,
        replacement: BodyPopUpEdit(iten: iten, homeController: homeController),
        child: BodyPopUpAdd(homeController: homeController, iten: iten)
      ),
    );
  }



}