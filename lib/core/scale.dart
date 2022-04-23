import 'package:flutter/cupertino.dart';

class Scale {
  static late double widthDevice;
  static late double heightDevice;

  static double width(double percentage) => (widthDevice / 100) * percentage;
  static double textSize(double size) => (widthDevice / 1000) * size;

  static void init(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    widthDevice = screenSize.width;
    heightDevice = screenSize.height;
  }
}

class AppFontSize {
  static double s1 = Scale.width(4.5);
  static double s2 = Scale.width(3.8);
  static double appBarTitleH1 = Scale.width(6);
}
