import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/home.dart';
import 'package:fossa_septica/ui/tela2.dart';

class Tela_Resultado_Vol_Util extends StatefulWidget {
  @override
  _Tela_Resultado_Vol_UtilState createState() =>
      _Tela_Resultado_Vol_UtilState();
}

class _Tela_Resultado_Vol_UtilState extends State<Tela_Resultado_Vol_Util> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Fossa Séptica"),
          backgroundColor: Colors.blue,
        ),
        body: ListView());
  }
}
