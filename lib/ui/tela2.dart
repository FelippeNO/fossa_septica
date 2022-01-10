// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/home.dart';
import 'package:fossa_septica/ui/tela_resultado_vol_util.dart';

class Tela2 extends StatefulWidget {
  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  List<DropdownMenuItem<String>> get dropdownItems3 {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Clique para selecionar"),
          value: "Clique para selecionar"),
      DropdownMenuItem(child: Text("1 ano"), value: "1 anos"),
      DropdownMenuItem(child: Text("2 anos"), value: "2 anos"),
      DropdownMenuItem(child: Text("3 anos"), value: "3 anos"),
      DropdownMenuItem(child: Text("4 anos"), value: "4 anos"),
      DropdownMenuItem(child: Text("5 anos"), value: "5 anos"),
    ];
    return menuItems;
  }

  void AvancarCalculo(TextEditingController controleTemp) {
    if ((controleTemp.text == null) ||
        (controleTemp.text.isEmpty) ||
        (controleTemp.text == "0") ||
        (valor3_selecionado == "Clique para selecionar")) {
      print("Não foi");
    } else {
      qntidadeTempEmDouble = double.parse(controleTemp.text);

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Tela_Resultado_Vol_Util()));
    }
  }

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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Selecione o Intervalo entre as limpezas do tanque séptico, em anos:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    value: valor3_selecionado,
                    onChanged: (String? newValue) {
                      setState(() {
                        valor3_selecionado = newValue!;
                      });
                    },
                    items: dropdownItems3,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Digite a temperatura média do mês mais frio da tua cidade, em Celsius:",
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: (TextField(
                enabled: valor3_selecionado != "Clique para selecionar"
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
            Column(
              children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Text("CALCULAR"),
                    onPressed: () => AvancarCalculo(controleTemp),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
