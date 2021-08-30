import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Color(0xff212121);
  Color primaryColor = Color(0xff0000000);
  Color lightColor = Color(0xff484848);
  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

  Widget showLogo() => Image(
        image: AssetImage('images/kk.png'),
      );

  MyStyle();
}
