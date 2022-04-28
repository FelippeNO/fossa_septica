import 'package:flutter/material.dart';
import 'package:fossa_septica/core/scale.dart';
import 'package:fossa_septica/entities/entities.dart';

class Tela1Controller {
  static late FossaEntity fossaPrincipal;
  static TextEditingController controleQntd = TextEditingController();
  static int valorOcup = 0;
  static int valorPred = 0;

  //STRINGS SELECÃO
  static String cliqueParaSelecionar = "Clique para selecionar";

  static String perm = "Permanente";
  static String temp = "Temporária";

  static String residpa = "01 - Residência Padrão Alto";
  static String residpm = "02 - Residência Padrão Médio";
  static String residpb = "03 - Residência Padrão Baixo";
  static String hotel = "04 - Hotel (Exceto lavanderia e cozinha)";
  static String alojprov = "05 - Alojamento Provisório";

  static String fabrica = "01 - Fábrica em geral";
  static String escritorio = "02 - Escritório";
  static String edifpub = "03 - Edifícios públicos ou comerciais";
  static String escolas = "04 - Escolas (externatos) e locais de\n longa permanência";
  static String bares = "05 - Bares";
  static String restaurantes = "06 - Restaurantes e similares";
  static String cinemas = "07 - Cinemas, teatros e locais de curta\n permanência";
  static String sanitpubs = "08 - Sanitários públicos";

  Future initialize() async {}

  static final List<DropdownMenuItem<int>> ocupTipoList = [
    DropdownMenuItem(child: Text(cliqueParaSelecionar, style: TextStyle(fontSize: AppFontSize.s3)), value: 0),
    DropdownMenuItem(child: Text(perm, style: TextStyle(fontSize: AppFontSize.s3)), value: 1),
    DropdownMenuItem(child: Text(temp, style: TextStyle(fontSize: AppFontSize.s3)), value: 2),
  ];

  static final List<DropdownMenuItem<int>> predTipPermList = [
    DropdownMenuItem(child: Text(cliqueParaSelecionar, style: TextStyle(fontSize: AppFontSize.s3)), value: 0),
    DropdownMenuItem(child: Text(residpa, style: TextStyle(fontSize: AppFontSize.s3)), value: 1),
    DropdownMenuItem(child: Text(residpm, style: TextStyle(fontSize: AppFontSize.s3)), value: 2),
    DropdownMenuItem(child: Text(residpb, style: TextStyle(fontSize: AppFontSize.s3)), value: 3),
    DropdownMenuItem(child: Text(hotel, style: TextStyle(fontSize: AppFontSize.s3)), value: 4),
    DropdownMenuItem(child: Text(alojprov, style: TextStyle(fontSize: AppFontSize.s3)), value: 5),
  ];

  static final List<DropdownMenuItem<int>> predTipTempList = [
    DropdownMenuItem(child: Text(cliqueParaSelecionar, style: TextStyle(fontSize: AppFontSize.s3)), value: 0),
    DropdownMenuItem(child: Text(fabrica, style: TextStyle(fontSize: AppFontSize.s3)), value: 1),
    DropdownMenuItem(child: Text(escritorio, style: TextStyle(fontSize: AppFontSize.s3)), value: 2),
    DropdownMenuItem(child: Text(edifpub, style: TextStyle(fontSize: AppFontSize.s3)), value: 3),
    DropdownMenuItem(child: Text(escolas, style: TextStyle(fontSize: AppFontSize.s3)), value: 4),
    DropdownMenuItem(child: Text(bares, style: TextStyle(fontSize: AppFontSize.s3)), value: 5),
    DropdownMenuItem(child: Text(restaurantes, style: TextStyle(fontSize: AppFontSize.s3)), value: 6),
    DropdownMenuItem(child: Text(cinemas, style: TextStyle(fontSize: AppFontSize.s3)), value: 7),
    DropdownMenuItem(child: Text(sanitpubs, style: TextStyle(fontSize: AppFontSize.s3)), value: 8),
  ];

  static String parseValorOcup(int valorOcup) {
    switch (valorOcup) {
      case 1:
        return perm;
      case 2:
        return temp;
      default:
        return "";
    }
  }

  static String parseValorPred(int valorOcup, int valorPred) {
    switch (valorOcup) {
      case 1:
        switch (valorPred) {
          case 1:
            return residpa;
          case 2:
            return residpm;
          case 3:
            return residpb;
          case 4:
            return hotel;
          case 5:
            return alojprov;
          default:
            return "";
        }
      case 2:
        switch (valorPred) {
          case 1:
            return fabrica;
          case 2:
            return escritorio;
          case 3:
            return edifpub;
          case 4:
            return escolas;
          case 5:
            return bares;
          case 6:
            return restaurantes;
          case 7:
            return cinemas;
          case 8:
            return sanitpubs;
          default:
            return "";
        }
      default:
        return "";
    }
  }
}
