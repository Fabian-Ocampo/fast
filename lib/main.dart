import 'package:flutter/material.dart';

import 'package:prueba/Screens/splash.dart';
import 'package:prueba/Screens/inicio.dart';
import 'package:prueba/Screens/cambio.dart';
import 'package:prueba/Screens/login2.dart';
import 'package:prueba/Screens/Datos.dart';
import 'package:prueba/Screens/login.dart';

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
         Inicio(),
         Cambio(),
         Login(),
         Login2(),
         Datos(),
         
        ],
      )),
    );
  }
}
