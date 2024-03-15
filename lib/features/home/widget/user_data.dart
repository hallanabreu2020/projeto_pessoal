import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';
import 'package:projeto_s/core/const/text_field.dart';

class UserDate extends StatelessWidget {
  const UserDate({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(alignment: Alignment.centerLeft ,child: Manrope(text: "Apelido", size: 14, font: FontWeight.w600)),
                const SizedBox(height: 5),
                InputPersonalized(controller: TextEditingController(), obscureText: false, validator: null, obscure: false, width: size.width - 200, height: 40),
              ],
            ),
            Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding:  EdgeInsets.all(3.0),
                child:  Row(
                  children: [
                    CircleAvatar(
                      radius: 25, // raio do avatar
                      backgroundImage: AssetImage("assets/logo.png"),
                    ),
                    SizedBox(width: 10),
                    Manrope(text: "Editar foto", size: 14, font: FontWeight.w500),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}