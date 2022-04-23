// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';
import 'package:fossa_septica/ui/widgets/orange_box.dart';
import 'package:fossa_septica/ui/widgets/rounded_primary_appbar.dart';
import 'package:fossa_septica/ui/widgets/square_button.dart';
import 'package:fossa_septica/ui/tela1calculo_fossa.dart';

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
      appBar: RoundedPrimaryAppBar(
        height: 1.5,
        isHome: true,
        fontSize: AppFontSize.appBarTitleH1,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: const [
              AppColors.denimSECUNDARY, //azul escuro
              AppColors.dodgerBluePRIMARY, //azul padrao
            ]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Scrollbar(
                    interactive: true,
                    scrollbarOrientation: ScrollbarOrientation.right,
                    thickness: 4.0,
                    isAlwaysShown: true,
                    child: ListView(children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: OrangeBox(
                              'O que você deseja calcular?',
                              fontSize: AppFontSize.s1,
                            ), //fim primeiro texto com fundo laranja
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
                                  child: SquareButton(
                                    onPressed: () => Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (context) => Tela1CalculoFossa())),
                                    imageFile: 'assets/images/fossa_septica_sumidouro_botao.png',
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
                                        style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),
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
                                  padding: EdgeInsets.all(Scale.width(3)),
                                  child: SizedBox(
                                    //texto 2
                                    height: 150,
                                    width: 150,
                                    child: Center(
                                      child: Text(
                                        "Somente a Fossa Séptica",
                                        style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(Scale.width(3)),
                                  child: SquareButton(
                                    imageFile: 'assets/images/fossa_septica_botao.png',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("Sobre o App", style: TextStyle(color: Color.fromRGBO(112, 112, 122, 1))),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MensagemSobreOApp;
                        });
                  },
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(3),
                      shadowColor: MaterialStateProperty.all(Colors.black),
                      shape:
                          MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0))),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  var MensagemSobreOApp = AlertDialog(
    scrollable: true,
    title: Text(
      "Sobre este App",
      textAlign: TextAlign.center,
    ),
    content: Text(
      "Este aplicativo foi feito para o dimensionamento do tanque séptico para tratamento"
      "dos efluentes no projeto sanitário de diversos tipos de edificações, atendendo as"
      "especificações da ABNT NBR 7229/1993.\n\n"
      "O tanque séptico, comumente chamado de fossa séptica, corresponde a uma unidade cilíndrica"
      "ou prismática retangular de fluxo horizontal, conforme consta na NBR 7229/1993, e diz"
      "respeito à uma alternativa ao tratamento descentralizado de esgotos por processos de"
      "sedimentação, flotação e digestão.\n\n"
      "O aplicativo realiza o dimensionamento do tanque séptico com o cálculo do volume útil estimado,"
      "que é dependente do volume diário da contribuição de despejos e lodo fresco, bem como do"
      "tempo de detenção do afluente e do tempo de acumulação do lodo.\n\n"
      "Posteriormente, este mesmo aplicativo irá fazer o dimensionamento do Sumidouro.\n\n"
      "Aplicativo criado por \nFelippe Negrão de Oliveira",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14.0),
    ),
  );
}
