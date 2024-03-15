import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/widget/button_popup.dart';

class Requests extends StatelessWidget {
  const Requests({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(alignment: Alignment.centerLeft ,child: Manrope(text: "Períodos", size: 18, font: FontWeight.w600)),
        const SizedBox(height: 10),
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xffF5F6FA),
            borderRadius: BorderRadius.circular(20)
          ),
          child:  SingleChildScrollView(
            child: Column(
              children: [
                ...homeController.itens.itens.map((e) {
                  return InkWell(
                    onTap: (){
                      ButtonPopUp().popUp(context, homeController, false, iten: e);
                    },
                    child: Body(name: e.name, date: e.dateFinal, ));
                })
              ],
            ),
          ),
        )
      ],
    );
  }
}










class Body extends StatelessWidget {
  const Body({super.key, required this.date, required this.name});

  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color.fromARGB(255, 223, 223, 223),
            width: 1.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignInside,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 245,
                child: Manrope(text: name,aling:TextAlign.left  , size: 16, font: FontWeight.w600, maxLines: 1)),
              Manrope(text: date,aling:TextAlign.center  , size: 12, font: FontWeight.w400, maxLines: 1)
            ],
          ),
        ),
      ),
    );
  }
}