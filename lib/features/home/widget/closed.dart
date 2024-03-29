import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/core/const/navigator.dart';
import 'package:projeto_s/core/const/scaffold_messeger.dart';
import 'package:projeto_s/features/login/view/login_view_module.dart';

class Closed extends StatelessWidget {
  const Closed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/logo.png"),
            ),
            const SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Manrope(text: "João", size: 22, font: FontWeight.w500, color: Color(0xff0F268A)),
                const SizedBox(width: 5),
                InkWell(
                  onTap: (){
                    NavigatorScreen().push(context, const LoginViewModule());
                    MessagesUi().snackUi(context, "Logout com sucesso");
                  },
                  child: const Manrope(text: "Sair", size: 16, font: FontWeight.w600, color: Color(0xff0F268A),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}