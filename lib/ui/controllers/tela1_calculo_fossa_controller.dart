import 'package:flutter/material.dart';
import 'package:fossa_septica/entities/entities.dart';

class Tela1Controller {
  static late FossaEntity fossaPrincipal;
  final TextEditingController controleQntd = TextEditingController();
  static int valor1Selecionado = 0;
  static int valor2Selecionado = 0;

  void initialize() {}

  // void handleAvancarTela2Button(TextEditingController controleQntd) {
  //   if ((controleQntd.text == null) ||
  //       (controleQntd.text.isEmpty) ||
  //       (controleQntd.text == "0") ||
  //       (valor2Selecionado == 0) ||
  //       (valor1Selecionado == 0)) {
  //     print("Não foi");
  //   } else {
  //     fossaPrincipal.qntidadeEmDouble = double.parse(controleQntd.text);
  //     fossaPrincipal.contDiariaOcup = fossaPrincipal.contDiaria * fossaPrincipal.qntidadeEmDouble;

  //     if (fossaPrincipal.contDiariaOcup <= 1500) {
  //       fossaPrincipal.pDetEsgoto = 1;
  //     } else if (fossaPrincipal.contDiariaOcup >= 1501 && fossaPrincipal.contDiariaOcup <= 3000) {
  //       fossaPrincipal.pDetEsgoto = 0.92;
  //     } else if (fossaPrincipal.contDiariaOcup >= 3001 && fossaPrincipal.contDiariaOcup <= 4500) {
  //       fossaPrincipal.pDetEsgoto = 0.83;
  //     } else if (fossaPrincipal.contDiariaOcup >= 4501 && fossaPrincipal.contDiariaOcup <= 6000) {
  //       fossaPrincipal.pDetEsgoto = 0.75;
  //     } else if (fossaPrincipal.contDiariaOcup >= 6001 && fossaPrincipal.contDiariaOcup <= 7500) {
  //       fossaPrincipal.pDetEsgoto = 0.67;
  //     } else if (fossaPrincipal.contDiariaOcup >= 7501 && fossaPrincipal.contDiariaOcup <= 9000) {
  //       fossaPrincipal.pDetEsgoto = 0.58;
  //     } else if (fossaPrincipal.contDiariaOcup >= 9001) {
  //       fossaPrincipal.pDetEsgoto = 0.50;
  //     }
  //     //4 controleQntd.clear();
  //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tela2()));

  //     print("$fossaPrincipal.qntidadeEmDouble");
  //     print("$fossaPrincipal.contDiariaOcup");
  //     print("$fossaPrincipal.pDetEsgoto");
  //   }
  // }

  static final List<DropdownMenuItem<int>> dropDownList1 = [
    const DropdownMenuItem(child: Text("Clique para selecionar"), value: 0),
    const DropdownMenuItem(child: Text("Permanente"), value: 1),
    const DropdownMenuItem(child: Text("Temporária"), value: 2),
  ];

  static final List<DropdownMenuItem<int>> dropDownList2 = [
    const DropdownMenuItem(child: Text("Clique para selecionar"), value: 0),
    const DropdownMenuItem(child: Text("01 - Residência Padrão Alto"), value: 1),
    const DropdownMenuItem(child: Text("02 - Residência Padrão Médio"), value: 2),
    const DropdownMenuItem(child: Text("03 - Residência Padrão Baixo"), value: 3),
    const DropdownMenuItem(child: Text("04 - Hotel (Exceto lavanderia e cozinha)"), value: 4),
    const DropdownMenuItem(child: Text("05 - Alojamento Provisório"), value: 5),
  ];
}
