
import 'package:flutter/material.dart';

class NavigatorScreen {
  push(BuildContext context, Widget navigate) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => navigate),
    );
  }

  pop(BuildContext context, Widget navigate) {
    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) => navigate),
    );
  }

  nav(BuildContext context, Widget navigate) {
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => navigate), (Route<dynamic> route) => false);
  }
}


