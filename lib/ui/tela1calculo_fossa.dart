// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/tela2.dart';

class Tela1CalculoFossa extends StatefulWidget {
  const Tela1CalculoFossa({Key? key}) : super(key: key);

  @override
  _Tela1CalculoFossaState createState() => _Tela1CalculoFossaState();
}

class _Tela1CalculoFossaState extends State<Tela1CalculoFossa> {
  @override
  final TextEditingController controleQntd = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    //  controleQntd.clear();
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Clique para selecionar"),
          value: "Clique para selecionar"),
      DropdownMenuItem(
          child: Text(
            "Permanente",
          ),
          value: "Permanente"),
      DropdownMenuItem(child: Text("Temporária"), value: "Temporária"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    if (valor1_selecionado == "Permanente") {
      List<DropdownMenuItem<String>> menuItems2 = [
        DropdownMenuItem(
            child: Text("Clique para selecionar"),
            value: "Clique para selecionar"),
        DropdownMenuItem(
            child: Text("01 - Residência Padrão Alto"),
            value: "01 - Residência Padrão Alto"),
        DropdownMenuItem(
            child: Text("02 - Residência Padrão Médio"),
            value: "02 - Residência Padrão Médio"),
        DropdownMenuItem(
            child: Text("03 - Residência Padrão Baixo"),
            value: "03 - Residência Padrão Baixo"),
        DropdownMenuItem(
            child: Text("04 - Hotel (Exceto lavanderia e cozinha)"),
            value: "04 - Hotel (Exceto lavanderia e cozinha)"),
        DropdownMenuItem(
            child: Text("05 - Alojamento Provisório"),
            value: "05 - Alojamento Provisório"),
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
      } else if (valor2_selecionado == "04 - Hotel (Exceto lavanderia e cozinha)") {
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
        DropdownMenuItem(
            child: Text("Clique para selecionar"),
            value: "Clique para selecionar"),
        DropdownMenuItem(
            child: Text("06 - Fábrica em geral"),
            value: "06 - Fábrica em geral"),
        DropdownMenuItem(
            child: Text("07 - Escritório"), value: "07 - Escritório"),
        DropdownMenuItem(
            child: Text("08 - Edifícios públicos ou\n comerciais"),
            value: "08 - Edifícios públicos ou\n comerciais"),
        DropdownMenuItem(
            child: Text(
                "09 - Escolas (externatos) e \nlocais de longa permanência"),
            value: "09 - Escolas (externatos) e \nlocais de longa permanência"),
        DropdownMenuItem(child: Text("10 - Bares"), value: "10 - Bares"),
        DropdownMenuItem(
            child: Text("11 - Restaurantes e similares"),
            value: "11 - Restaurantes e similares"),
        DropdownMenuItem(
            child:
                Text("12 - Cinemas, teatros, e locais \nde curta permanência"),
            value: "12 - Cinemas, teatros, e locais \nde curta permanência"),
        DropdownMenuItem(
            child: Text("13 - Sanitários públicos"),
            value: "13 - Sanitários públicos"),
      ];
      if (valor2_selecionado == "06 - Fábrica em geral") {
        contDiaria = 70;
        lF = 0.30;
        tipagem = "pessoas";
      } else if (valor2_selecionado == "07 - Escritório") {
        contDiaria = 50;
        lF = 0.20;
        tipagem = "pessoas";
      } else if (valor2_selecionado ==
          "08 - Edifícios públicos ou\n comerciais") {
        contDiaria = 50;
        lF = 0.20;
        tipagem = "pessoas";
      } else if (valor2_selecionado ==
          "09 - Escolas (externatos) e \nlocais de longa permanência") {
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
      } else if (valor2_selecionado ==
          "12 - Cinemas, teatros, e locais \nde curta permanência") {
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
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Tela2()));

      print("$qntidadeEmDouble");
      print("$contDiariaOcup");
      print("$pDetEsgoto");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(color: Color.fromRGBO(112, 112, 122, 1)),
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(26))),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Calculadora de Fossa Séptica e"
          "\n Sumidouro",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(112, 112, 122, 1),
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: const [
                  Color.fromRGBO(27, 87, 179, 1), //azul escuro
                  Color.fromRGBO(64, 139, 255, 1), //azul padrao
                ]),
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                        //inicio primeiro texto com fundo laranja
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                255, 191, 64, 1), //laranja padrao
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Text(
                            "Selecione o tipo da Ocupação:",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    64, 139, 255, 1), // azul padrao
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  Padding(
                    // COMEÇA AQUI O PRIMEIRO DROPDOWN
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.tight(Size(250, 50)),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 0.00,
                              blurRadius: 3.0)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: const [
                              Color.fromRGBO(89, 156, 255, 1), //azul escuro
                              Color.fromRGBO(64, 139, 255, 1), //azul padrao
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.orange,
                        focusColor: Colors.orange,
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
                  ), // TERMINA AQUI O PRIMEIRO DROPDOWN
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                        //inicio segundo texo fundo laranja
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                255, 191, 64, 1), //laranja padrao
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Text(
                            "Selecione o tipo do Prédio:",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    64, 139, 255, 1), // azul padrao
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  Padding(
                    // COMEÇA AQUI O SEGUNDO DROPDOWN
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.tight(Size(330, 50)),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 0.00,
                              blurRadius: 3.0)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: const [
                              Color.fromRGBO(89, 156, 255, 1), //azul escuro
                              Color.fromRGBO(64, 139, 255, 1), //azul padrao
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        dropdownColor: Colors.white,
                        iconEnabledColor: Colors.orange,
                        focusColor: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        itemHeight: 60,
                        value: valor2_selecionado,
                        onChanged:
                            valor1_selecionado != "Clique para selecionar"
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
                  ), //SEGUNDO DROPDOWN FIM
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                        //inicio segundo texo fundo laranja
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                255, 191, 64, 1), //laranja padrao
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Text(
                            "Digite a quantidade de $tipagem:",
                            style: TextStyle(
                                color: Color.fromRGBO(
                                    64, 139, 255, 1), // azul padrao
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100.0, right: 100.0, top: 15.0, bottom: 15.0),
                    child: (TextFormField(
                      textAlign: TextAlign.center,
                      enabled: valor2_selecionado != "Clique para selecionar"
                          ? true
                          : false,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.blue,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 191, 64, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                      controller: controleQntd,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(120, 120, 120, 0.5),
                                width: 3.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 191, 64, 1),
                                width: 3.0)),
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(255, 191, 64, 1)),
                        hintText: "Ex.: 5",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 191, 64, 1),
                                width: 2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0))),
                      ),
                    )),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 191, 64, 1)),
                    ),
                    child: Text("Avançar >"),
                    onPressed: () => AvancarTela2(controleQntd),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
