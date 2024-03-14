import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_s/core/const/dropdown.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/core/const/mask.dart';
import 'package:projeto_s/core/const/scaffold_messeger.dart';
import 'package:projeto_s/core/const/text_field.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/model/itens_model.dart';
import 'package:projeto_s/features/home/widget/popup_calendar.dart';
import 'package:projeto_s/features/login/widget/button.dart';

class BodyPopUpAdd extends StatefulWidget {
  const BodyPopUpAdd({super.key, required this.homeController, required this.iten});

  final HomeController homeController;
  final Iten? iten;

  @override
  State<BodyPopUpAdd> createState() => _BodyPopUpAddState();
}

class _BodyPopUpAddState extends State<BodyPopUpAdd> {

@override
  void initState() {
    super.initState();
    if(widget.iten == null){
      widget.homeController.disposeLocal();
    }else{
      widget.homeController.initLocal(widget.iten!);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: widget.homeController,
      builder: (context,_) {
        return SingleChildScrollView(
          child: Padding(
              padding:  const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 30),
                      const Manrope(text: "Novo Período", size: 16),
                      InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: const Icon(Icons.close))
                    ],
                  ),
                  const SizedBox(height: 20),
                  InputPersonalizedPopUp(labelText:  "Nomeie seu periodo",controller: widget.homeController.nameController, obscureText: false, validator: null, obscure: false, width: size.width - 130),
                  const SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: size.width - 130,
                    color: const Color(0XFFF5F6FA),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Manrope(text: "Começa", size: 16),
                              InkWell(
                                onTap: ()=> PopUpCalendar().popUp(context, homeController: widget.homeController),
                                child: Container(
                                  height: 40,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 204, 204, 204),
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                      strokeAlign: BorderSide.strokeAlignInside,
                                    )
                                  ),
                                  child: Center(child: Manrope(text: Mask().convertData(widget.homeController.init) , size: 14)),
                                ),
                              ),
                            ],
                          ),
                          const Divider(color: Colors.grey,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Manrope(text: "Termina", size: 16),
                              InkWell(
                                onTap: ()=> PopUpCalendar().popUp(context, init: false, homeController: widget.homeController),
                                child: Container(
                                  height: 40,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 204, 204, 204),
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                      strokeAlign: BorderSide.strokeAlignInside,
                                    )
                                  ),
                                  child: Center(child: Manrope(text: Mask().convertData(widget.homeController.end) , size: 14)),
                                ),
                              ),
                            ],
                          ),
                          const Divider(color: Colors.grey,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Manrope(text: "Categoria", size: 16),
                              Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 204, 204, 204),
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                    strokeAlign: BorderSide.strokeAlignInside,
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      DropdownButtonFormText(onTap: (String? v) {
                                        widget.homeController.addSelctCategory(v!);
                                      }, value: widget.homeController.selctCategory, lists: widget.homeController.category, color: const Color.fromARGB(255, 7, 7, 7),size: 14, font: FontWeight.w400,),
                                      const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.grey)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Manrope(text: "Meta 1", size: 16),
                            InputPersonalized(inputFormatters: [LengthLimitingTextInputFormatter(3)], keyboardType: TextInputType.number ,hintText:  "Un",controller: widget.homeController.meta1Controller, obscureText: false, validator: null, obscure: false, width: 80, height: 40),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Manrope(text: "Meta 2", size: 16),
                            InputPersonalized(inputFormatters: [LengthLimitingTextInputFormatter(3)],keyboardType: TextInputType.number ,hintText:  "Un",controller: widget.homeController.meta2Controller, obscureText: false, validator: null, obscure: false, width: 80, height: 40),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ButtonS(onTap: (){
                          
                          if(widget.iten == null){
                            widget.homeController.conclude();
                            Navigator.pop(context);
                            MessagesUi().snackUi(context, "Dados adicionado com sucesso");
                          }else{
                            widget.homeController.inclement(widget.iten!);
                            Navigator.pop(context);
                            MessagesUi().snackUi(context, "Dados alterado com sucesso");
                          }
                        }, width: 120, text: 'Concluir', height: 40)
                      ],
                    ),
                  ),
        
        
        
        
        
        
        
        
        
                ],
              ),
            ),
        );
      }
    );
  }
}