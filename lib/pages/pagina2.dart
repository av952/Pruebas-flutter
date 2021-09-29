import 'package:flutter/material.dart';

class pagina2 extends StatelessWidget {
  const pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.deepPurple[100],
        centerTitle: true,
        title: Text("Pagina 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.only(left: 50, right: 10),
            alignment: Alignment.center,
            child: Text("Terminos y condiciones",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          letras(context),
        ],
      ),
    );
  }
}

Widget letras(c) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(padding: const EdgeInsets.all(15)),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        child: Text(
            "condiciones de uso son estaas ahshajsahshasjahshajshjahsjahshajhsjahjshajhsjahjshajhsjahjshajhsjahjshajshjahsjahsjhajshjahsjhajsh"),
      ),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(c);
            },
            style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "acepto todo",
                  textAlign: TextAlign.end,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            )),
      )
    ],
  );
}
