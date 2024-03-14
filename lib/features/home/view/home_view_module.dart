import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';
import 'package:projeto_s/features/home/view/home_view.dart';

class HomeViewModule extends StatefulWidget {
  const HomeViewModule({super.key});

  @override
  State<HomeViewModule> createState() => _HomeViewModuleState();
}

class _HomeViewModuleState extends State<HomeViewModule> {

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController();
    homeController.recuperarObjeto();
  }

  @override
  void dispose() {
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: homeController,
        builder: (context, _) {
          return HomeView(homeController: homeController);
        }
      ),
    );
  }
}
