import 'package:flutter/cupertino.dart';

class Scale {
  static late double widthDevice;
  static late double heightDevice;

  static double width(double percentage) => (widthDevice / 100) * percentage;

  static void init(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    widthDevice = screenSize.width;
    heightDevice = screenSize.height;
  }
}
