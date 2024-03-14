import 'package:flutter/material.dart';
import 'package:projeto_s/features/splash/controller/splashcontroller.dart';
import 'package:projeto_s/features/splash/view/splash_view.dart';

class SplashViewModule extends StatefulWidget {
  const SplashViewModule({super.key});

  @override
  State<SplashViewModule> createState() => _SplashViewModuleState();
}

class _SplashViewModuleState extends State<SplashViewModule> {

  SplashController splashController = SplashController();

  @override
  void initState() {
    super.initState();
    splashController.timeToNavigate(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView(),
    );
  }
}
