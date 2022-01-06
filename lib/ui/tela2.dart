import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/home.dart';

class Tela2 extends StatefulWidget {
  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  final TextEditingController controleTemp = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Fossa Séptica"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.75),
                        )
                      ]),
                  height: 150.0,
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Tipo da Ocupação: $valor1_selecionado",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Tipo do Prédio: $valor2_selecionado",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Quantidade de $tipagem: ${qntidadeEmDouble.toInt()}",
                          style: TextStyle(color: Colors.white)),
                      Text("Contribuição Diária: $contDiaria L/dia/pessoa",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Contribuição Diária da Ocupação: $contDiariaOcup L/dia",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Digite a temperatura mais alta do mês mais frio, em Celsius:",
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: (TextField(
                enabled: valor2_selecionado != "Clique para selecionar"
                    ? true
                    : false,
                keyboardType: TextInputType.number,
                cursorColor: Colors.blue,
                style: TextStyle(color: Colors.blue, fontSize: 12),
                controller: controleTemp,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 3.0)),
                  labelStyle: TextStyle(color: Colors.blue),
                  hintText: "",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0))),
                ),
              )),
            ),
          ],
        ));
  }
}
//by Felippe Negrão 3

