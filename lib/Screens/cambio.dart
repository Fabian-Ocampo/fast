import 'package:flutter/material.dart';
import 'package:prueba/Screens/inicio.dart';
import 'package:prueba/Screens/login.dart';
import 'package:prueba/Screens/splash.dart';

class Cambio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          children: <Widget>[
            Splash(),
            Inicio(),
          ],
        ),
      ),
    );
  }
}
