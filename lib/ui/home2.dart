// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/tela2.dart';

class Fossa_Septica2 extends StatefulWidget {
  const Fossa_Septica2({Key? key}) : super(key: key);

  @override
  _Fossa_Septica2State createState() => _Fossa_Septica2State();
}

class _Fossa_Septica2State extends State<Fossa_Septica2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 120,
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
              fontSize: 21.0,
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
          child: Column(
            children: [
              SizedBox(
                height: 730,
                child: Scrollbar(
                  interactive: true,
                  scrollbarOrientation: ScrollbarOrientation.right,
                  thickness: 4.0,
                  isAlwaysShown: true,
                  child: ListView(
                  children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Container(
                            //inicio primeiro texto com fundo laranja
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                color:
                                    Color.fromRGBO(255, 191, 64, 1), //laranja padrao
                                borderRadius: BorderRadius.all(Radius.circular(25))),
                            child: Center(
                              child: Text(
                                "O que você deseja calcular?",
                                style: TextStyle(
                                    color: Color.fromRGBO(
                                        64, 139, 255, 1), // azul padrao
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0),
                                textAlign: TextAlign.center,
                              ),
                            )), //fim primeiro texto com fundo laranja
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              // primeira linha de texto e opcao
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                child: IconButton(onPressed: null, icon: Image.asset('fossa_septica_sumidouro_botao.png'),),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 191, 64, 1),
                                      width: 5.0),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                // opcao 1
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Padding(
                              // texto 1
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                height: 150,
                                width: 150,
                                child: Center(
                                  child: Text(
                                    "Fossa Séptica e o\n Sumidouro",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        // segunda linha de texto e opcao
                        padding: EdgeInsets.all(3.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                //texto 2
                                height: 150,
                                width: 150,
                                child: Center(
                                  child: Text(
                                    "Somente a Fossa Séptica",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: IconButton(onPressed: null, icon: Image.asset('fossa_septica_botao.png'),),
                                //opcao 2
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(255, 191, 64, 1),
                                      width: 5.0),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ]
                )),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("Sobre o App",
                  style: TextStyle(color: Color.fromRGBO(112, 112, 122, 1)
                  )
                  ), 
                  onPressed: null,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)
                      )
                      ),
                    backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),),
              ),
              ],
          ),
        ),
      ),
    );
  }
}
