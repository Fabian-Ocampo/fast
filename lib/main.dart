import 'package:flutter/material.dart';
import 'package:prueba/Screens/splash.dart';
import 'package:prueba/Screens/welcome.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView(
        children: <Widget>[
          Splash(),
         Welcome(),
         
        ],
      )),
    );
  }
}
