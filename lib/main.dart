import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/pagina2.dart';

void main() => runApp(miApp());

class miApp extends StatelessWidget {
  const miApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my App",
      home: inicio(),
    ); //android\app\src\main\res
  }
}

class inicio extends StatefulWidget {
  inicio({Key? key}) : super(key: key);

  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.deepPurple[100],
        centerTitle: true,
        title: Text("my Aplicacion"),
      ),
      body: cuerpo(context),
    );
  }
}

Widget cuerpo(c) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/imagenfondo.png"), fit: BoxFit.fill)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        campousuario("usuario", false),
        campousuario("correo", false),
        campousuario("contraseña", true),
        SizedBox(
          height: 15,
        ),
        boton(c),
      ],
    )),
  );
}

Widget nombre() {
  return Text(
    "sing in",
    style: TextStyle(
        color: Colors.white70, fontSize: 50, fontWeight: FontWeight.bold),
  );
}

Widget campousuario(a, b) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    child: TextField(
      obscureText: b,
      decoration: InputDecoration(
        hintText: a,
        fillColor: Colors.white,
        filled: true, //para que se coloree el fondo  del fillColor
      ),
    ),
  );
}

Widget boton(c) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(c, MaterialPageRoute(builder: (c) => pagina2()));
    },
    style: ElevatedButton.styleFrom(primary: Colors.amber),
    child: Text("Select"),
  );
}
