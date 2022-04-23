// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/tela2.dart';

class FossaSeptica extends StatefulWidget {
  @override
  _FossaSepticaState createState() => _FossaSepticaState();
}

class _FossaSepticaState extends State<FossaSeptica> {
  @override
  final TextEditingController controleQntd = new TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    controleQntd.clear();
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Clique para selecionar"), value: "Clique para selecionar"),
      DropdownMenuItem(child: Text("Permanente"), value: "Permanente"),
      DropdownMenuItem(child: Text("Temporária"), value: "Temporária"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    if (valor1_selecionado == "Permanente") {
      List<DropdownMenuItem<String>> menuItems2 = [
        DropdownMenuItem(child: Text("Clique para selecionar"), value: "Clique para selecionar"),
        DropdownMenuItem(child: Text("01 - Residência Padrão Alto"), value: "01 - Residência Padrão Alto"),
        DropdownMenuItem(child: Text("02 - Residência Padrão Médio"), value: "02 - Residência Padrão Médio"),
        DropdownMenuItem(child: Text("03 - Residência Padrão Baixo"), value: "03 - Residência Padrão Baixo"),
        DropdownMenuItem(
            child: Text("04 - Hotel (Exceto lavanderia e cozinha)"), value: "04 - Hotel (Exceto lavanderia e cozinha)"),
        DropdownMenuItem(child: Text("05 - Alojamento Provisório"), value: "05 - Alojamento Provisório"),
      ];

      if (valor2_selecionado == "01 - Residência Padrão Alto") {
        contDiaria = 160;
        lF = 1.00;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "02 - Residência Padrão Médio") {
        contDiaria = 130;
        lF = 1.00;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "03 - Residência Padrão Baixo") {
        contDiaria = 100;
        lF = 1.00;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "04 - Hotel (Exceto lavanderia e cozinha") {
        contDiaria = 100;
        lF = 1.00;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "05 - Alojamento Provisório") {
        contDiaria = 80;
        lF = 1.00;
        tipagem = "pessoas";
      } else {
        contDiaria = 0;
        lF = 0;
        tipagem = "pessoas";
      }
      return menuItems2;
    } else {
      List<DropdownMenuItem<String>> menuItems3 = [
        DropdownMenuItem(child: Text("Clique para selecionar"), value: "Clique para selecionar"),
        DropdownMenuItem(child: Text("06 - Fábrica em geral"), value: "06 - Fábrica em geral"),
        DropdownMenuItem(child: Text("07 - Escritório"), value: "07 - Escritório"),
        DropdownMenuItem(
            child: Text("08 - Edifícios públicos ou comerciais"), value: "08 - Edifícios públicos ou comerciais"),
        DropdownMenuItem(
            child: Text("09 - Escolas (externatos) e \nlocais de longa permanência"),
            value: "09 - Escolas (externatos) e \nlocais de longa permanência"),
        DropdownMenuItem(child: Text("10 - Bares"), value: "10 - Bares"),
        DropdownMenuItem(child: Text("11 - Restaurantes e similares"), value: "11 - Restaurantes e similares"),
        DropdownMenuItem(
            child: Text("12 - Cinemas, teatros, e locais \nde curta permanência"),
            value: "12 - Cinemas, teatros, e locais \nde curta permanência"),
        DropdownMenuItem(child: Text("13 - Sanitários públicos"), value: "13 - Sanitários públicos"),
      ];
      if (valor2_selecionado == "06 - Fábrica em geral") {
        contDiaria = 70;
        lF = 0.30;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "07 - Escritório") {
        contDiaria = 50;
        lF = 0.20;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "08 - Edifícios públicos ou comerciais") {
        contDiaria = 50;
        lF = 0.20;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "09 - Escolas (externatos) e \nlocais de longa permanência") {
        contDiaria = 50;
        lF = 0.20;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "10 - Bares") {
        contDiaria = 6;
        lF = 0.10;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "11 - Restaurantes e similares") {
        contDiaria = 25;
        lF = 0.10;
        tipagem = "refeições";
      } else if (valor2_selecionado == "12 - Cinemas, teatros, e locais \nde curta permanência") {
        contDiaria = 2;
        lF = 0.02;
        tipagem = "lugares";
      } else if (valor2_selecionado == "13 - Sanitários públicos") {
        contDiaria = 480;
        lF = 4.00;
        tipagem = "bacias sanitárias";
      } else {
        contDiaria = 0;
        lF = 0;
        tipagem = "pessoas";
      }
      return menuItems3;
    }
  }

  void AvancarTela2(TextEditingController controleQntd) {
    if ((controleQntd.text == null) ||
        (controleQntd.text.isEmpty) ||
        (controleQntd.text == "0") ||
        (valor2_selecionado == "Clique para selecionar") ||
        (valor1_selecionado == "Clique para selecionar")) {
      print("Não foi");
    } else {
      qntidadeEmDouble = double.parse(controleQntd.text);
      contDiariaOcup = contDiaria * qntidadeEmDouble;

      if (contDiariaOcup <= 1500) {
        pDetEsgoto = 1;
      } else if (contDiariaOcup >= 1501 && contDiariaOcup <= 3000) {
        pDetEsgoto = 0.92;
      } else if (contDiariaOcup >= 3001 && contDiariaOcup <= 4500) {
        pDetEsgoto = 0.83;
      } else if (contDiariaOcup >= 4501 && contDiariaOcup <= 6000) {
        pDetEsgoto = 0.75;
      } else if (contDiariaOcup >= 6001 && contDiariaOcup <= 7500) {
        pDetEsgoto = 0.67;
      } else if (contDiariaOcup >= 7501 && contDiariaOcup <= 9000) {
        pDetEsgoto = 0.58;
      } else if (contDiariaOcup >= 9001) {
        pDetEsgoto = 0.50;
      }
      //4 controleQntd.clear();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tela2()));

      print("$qntidadeEmDouble");
      print("$contDiariaOcup");
      print("$pDetEsgoto");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de Fossa Séptica",
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Selecione o Tipo da Ocupação:",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  value: valor1_selecionado,
                  onChanged: (String? newValue) {
                    setState(() {
                      valor1_selecionado = newValue!;
                      valor2_selecionado = "Clique para selecionar";
                      controleQntd.clear();
                    });
                  },
                  items: dropdownItems,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Selecione o Tipo do Prédio:",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  itemHeight: 80,
                  value: valor2_selecionado,
                  onChanged: valor1_selecionado != "Clique para selecionar"
                      ? (String? newValue) {
                          setState(() {
                            valor2_selecionado = newValue!;
                            controleQntd.clear();
                          });
                        }
                      : null,
                  items: dropdownItems2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Digite a quantidade de $tipagem:",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: (TextField(
                  enabled: valor2_selecionado != "Clique para selecionar" ? true : false,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.blue,
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                  controller: controleQntd,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 3.0)),
                    labelStyle: TextStyle(color: Colors.blue),
                    hintText: "",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1.5),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0))),
                  ),
                )),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text("Avançar >"),
                onPressed: () => AvancarTela2(controleQntd),
              )
            ],
          )
        ],
      ),
    );
  }
}
