import 'package:flutter/material.dart';
import 'package:projeto_s/features/login/view/login_view.dart';

class LoginViewModule extends StatefulWidget {
  const LoginViewModule({super.key});

  @override
  State<LoginViewModule> createState() => _LoginViewModuleState();
}

class _LoginViewModuleState extends State<LoginViewModule> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginView(),
    );
  }
}
