import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/widget/button.dart';
import 'package:projeto_s/features/home/widget/closed.dart';
import 'package:projeto_s/features/home/widget/menu_config.dart';
import 'package:projeto_s/features/home/widget/requests.dart';
import 'package:projeto_s/features/home/widget/user_data.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.homeController});

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MenuConfig(),
                const UserDate(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Divider(color: Color.fromARGB(255, 106, 106, 106),),
                ),
                Requests(homeController: homeController),
                Button(homeController: homeController),
                const Closed()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



