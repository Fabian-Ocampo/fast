import 'package:ejercicio0/screens/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        color: Color.fromARGB(255, 255, 249, 239),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/images/balloon-shape.png')),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image(
                  image: AssetImage('assets/images/FastFood-Logo.png'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                child: Image(
                    image: AssetImage('assets/images/online_groceries.png')),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: 'El directorio de comida',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          )),
                      textScaleFactor: 2,
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'Busca.Encuentra.Pide',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                          )),
                      textScaleFactor: 1.5,
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'Recive.Disfruta',
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                      textScaleFactor: 1.3,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                  child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MaterialButton(
                      
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                          
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      padding: const EdgeInsets.symmetric(
                           horizontal: 110, vertical:25),
                      color:Color.fromRGBO(231, 74, 47, 1),
                      child: Text('INICIA AHORA',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ])),
            )
          ],
        ),
      )),
    );
  }
}