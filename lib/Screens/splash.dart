import 'dart:math';
import 'package:flutter/material.dart';
import 'package:prueba/Screens/inicio.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        //width: 10,
        //fit: BoxFit.cover,
        image: AssetImage('assets/images/fastFood.png'),
      ),
    );
  }
}