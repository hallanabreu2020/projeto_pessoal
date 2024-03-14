import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/fonst.dart';

class MessagesUi{
  snackUi(BuildContext c, String m){
    var s = SnackBar(
      backgroundColor: Colors.red,
      content: Manrope(text: m, color: Colors.white, font: FontWeight.w500, size: 14),
    );
    if(c.mounted) ScaffoldMessenger.of(c).showSnackBar(s);
  }
}

