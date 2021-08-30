import 'package:flutter/material.dart';
import 'package:appflut/state/authen.dart';

void main() {
  runApp(MyApp());
}

final Map<String, WidgetBuilder> map = {
  // ignore: non_constant_identifier_names
  '/authen': (BuildContext) => Authen(),
};

String initRoute = '/authen';

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      title: 'IotApp',
      initialRoute: initRoute,
      //Sirimanee Pimkeaw
      //Baifern
    );
  }
}
