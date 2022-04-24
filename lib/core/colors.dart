import 'package:flutter/material.dart';

class AppColors {
  static const Color supernova = Color.fromRGBO(255, 191, 64, 1);
  static const Color dodgerBluePRIMARY = Color.fromRGBO(64, 139, 255, 1);
  static const Color denimSECUNDARY = Color.fromRGBO(27, 87, 179, 1);
  static const Color mayaBlueTERTIARY = Color.fromRGBO(89, 156, 255, 1);
  static const Color rollingStone = Color.fromRGBO(112, 112, 122, 1);
}

class AppGradients {
  static const LinearGradient primaryBlueGradientBCtTC =
      LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
    AppColors.denimSECUNDARY, //azul escuro
    AppColors.dodgerBluePRIMARY, //azul padrao
  ]);

  static const LinearGradient secundaryBlueGradientTLtBR =
      LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
    AppColors.mayaBlueTERTIARY, //azul escuro
    AppColors.dodgerBluePRIMARY, //azul padrao
  ]);
}
