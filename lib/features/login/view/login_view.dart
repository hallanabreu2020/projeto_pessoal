import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/core/const/navigator.dart';
import 'package:projeto_s/core/const/text_field.dart';
import 'package:projeto_s/features/home/view/home_view_module.dart';
import 'package:projeto_s/features/login/widget/button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SizedBox(
      width: size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png"),
            const SizedBox(height: 10),
            const Align(alignment: Alignment.centerLeft ,child: Manrope(text: "Email", size: 18, font: FontWeight.w600)),
            const SizedBox(height: 10),
            InputPersonalized(controller: TextEditingController(), obscureText: false, validator: null, obscure: false, width: size.width - 40),
            const SizedBox(height: 20),
            const Align(alignment: Alignment.centerLeft ,child: Manrope(text: "Senha", size: 18, font: FontWeight.w600)),
            const SizedBox(height: 10),
            InputPersonalized(controller: TextEditingController(), obscureText: false, validator: null, obscure: false, width: size.width - 40),
            const SizedBox(height: 30),
            Align(alignment: Alignment.centerRight ,child: ButtonS(width: 120, onTap: () => NavigatorScreen().nav(context, const HomeViewModule()), text: 'Login',))
          ],
        ),
      ),
    );
  }
}
