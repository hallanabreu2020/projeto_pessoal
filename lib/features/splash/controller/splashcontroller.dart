import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/navigator.dart';
import 'package:projeto_s/features/login/view/login_view_module.dart';

class SplashController with ChangeNotifier{


  timeToNavigate(BuildContext context){
    Future.delayed(const Duration(seconds: 3),(){
      NavigatorScreen().push(context, const LoginViewModule());
    });
  }
  
}
