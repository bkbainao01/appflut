import 'package:flutter/material.dart';
import 'package:appflut/utility/mystyle.dart';

class Authen extends StatefulWidget {
  // const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double screen;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          showlogo(),
          MyStyle().titleH1('FEBERK'),
          buildUser(),
          buildPassword(),
        ],
      ),
    ));
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyStyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().darkColor),
          ),
          labelStyle: TextStyle(color: MyStyle().darkColor),
          labelText: 'User:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().lightColor),
          ),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyStyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().lightColor),
          ),
          labelStyle: TextStyle(color: MyStyle().lightColor),
          labelText: 'Password : ',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyStyle().darkColor),
          ),
        ),
      ),
    );
  }

  Container showlogo() {
    return Container(
      width: screen * 0.3,
      child: MyStyle().showLogo(),
    );
  }
}
