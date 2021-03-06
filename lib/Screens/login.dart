import 'package:flutter/material.dart';
import 'package:prueba/Screens/Datos.dart';
import 'package:prueba/Screens/login.dart';
import 'package:prueba/Screens/inicio.dart';
import 'package:prueba/Screens/login2.dart';
import 'package:prueba/Screens/splash.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get email => null;
String nombre=" ";
final nombreController=TextEditingController();
  @override
void dispose(){
 nombreController.dispose();
 super.dispose(); 
}
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Inicio()));
            },
          ),
          backgroundColor: Color.fromARGB(255, 252, 79, 50),
          title: Text('Login'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 255, 249, 239),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .33,
                child: FractionallySizedBox(
                    widthFactor: 1.2,
                    heightFactor: 1.2,
                    child: Container(
                      color: Colors.blue,
                      child: Image(
                          image: AssetImage('assets/images/fondo2.png')),
                    )),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * .35,
                  child: FractionallySizedBox(
                    widthFactor: .9,
                    heightFactor: 1,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: Text(
                              'Ingresa tus credenciales\nregistradas para acceder',
                              textScaleFactor: 1.5,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: .8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ListTile(
                                  leading: Icon(Icons.email),
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    0, 0, 0, 0)))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: .8,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ListTile(
                                  leading: Icon(Icons.lock_sharp),
                                  title: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    0, 0, 0, 0)))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(top: 60)),
                Text(
                  '¿Aun no tienes cuenta?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Open Sans'),
                ),
                GestureDetector(
                  child: Text(
                    ' Consigue una aquí',
                    style: TextStyle(
                        color: Color.fromRGBO(231, 74, 47, 1),
                        fontSize: 14,
                        fontFamily: 'Open Sans'),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Datos()));
                  },
                ),
              ],
            ),
              Expanded(

                child: FractionallySizedBox(
                  widthFactor: .9,
                  heightFactor: .9,
                  child: Container(
                    child: MaterialButton(
                      color: Color.fromARGB(255, 252, 79, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),

                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>Splash()));
     
                      },
                      child: Text(
                        'CONTINUAR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
              /* child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: MaterialButton(
                            color: Color.fromARGB(255, 252, 79, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            onPressed: () {},
                            child: Text(
                              'CONTINUAR',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),*/
            ],
          ),
        ),
      ),
    );
  }
}