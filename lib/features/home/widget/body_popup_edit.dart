import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/core/const/mask.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/model/itens_model.dart';
import 'package:projeto_s/features/home/widget/button_popup.dart';
import 'package:projeto_s/features/login/widget/button.dart';

class BodyPopUpEdit extends StatelessWidget {
  const BodyPopUpEdit({super.key, required this.iten, required this.homeController});

  final Iten? iten;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 30),
                 const  Manrope(text: "Editar Período", size: 16, font: FontWeight.w700),
                  InkWell(
                    onTap: (){Navigator.pop(context);},
                    child: const Icon(Icons.close, size: 30, color: Color.fromARGB(255, 216, 216, 216)))
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 55,
                width: size.width - 130,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Center(child: Manrope(text: iten!.name,font: FontWeight.w500, size: 16)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Manrope(text: "Começa", size: 16, font: FontWeight.w500),
                          SizedBox(
                            height: 40,
                            child: Center(child: Manrope(text: Mask().convertData(iten!.init), size: 14)),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Manrope(text: "Termina", size: 16, font: FontWeight.w500),
                          SizedBox(
                            height: 40,
                            child: Center(child: Manrope(text: Mask().convertData(iten!.end), size: 14)),
                          ),
                        ],
                      ),
                      const Divider(color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Manrope(text: "Categoria", size: 16, font: FontWeight.w500),
                          SizedBox(
                            height: 40,
                            child: Center(child: Manrope(text: iten!.selctCategory, size: 14)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Manrope(text: "Meta 1", size: 16, font: FontWeight.w500),
                        SizedBox(
                            height: 40,
                            child: Center(child: Manrope(text: iten!.meta1.toString(), size: 14)),
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Manrope(text: "Meta 2", size: 16, font: FontWeight.w500),
                        SizedBox(
                            height: 40,
                            child:  Center(child: Manrope(text: iten!.meta2.toString(), size: 14)),
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonS(onTap: () {
                          homeController.deleteItem(iten!);
                          Navigator.pop(context);
                        }, width: 110, text: 'Excluir', height: 40, font: FontWeight.w600, size: 16, color: Colors.red),
                        ButtonS(onTap: () {
                          Navigator.pop(context);
                          ButtonPopUp().popUp(context, homeController, true, iten: iten);
                        }, width: 110, text: 'Editar', height: 40, font: FontWeight.w600, size: 16) 
                      ],
                    )
                  ],
                ),
              ),
    
    
    
    
    
    
    
    
    
            ],
          ),
        ),
    );
  }


  
}