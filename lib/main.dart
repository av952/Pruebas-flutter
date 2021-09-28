import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(miApp());

class miApp extends StatelessWidget {
  const miApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my App",
      home: inicio(),
    );
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            padding: EdgeInsets.all(5),
            child: Image.network(
                "https://image.flaticon.com/icons/png/512/1238/1238808.png"),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(5),
            child: Image.network(
                "https://image.flaticon.com/icons/png/512/1238/1238808.png"),
          ),
          Container(
              child: ElevatedButton(
            child: Row(
              children: [Icon(Icons.accessible_forward_sharp), Text("  Hora")],
            ),
            onPressed: () {
              var t = DateTime.now();

              print(t);
            },
          )),
        ],
      ),
    );
  }
}
