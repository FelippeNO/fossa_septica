import 'dart:html';

import 'package:flutter/cupertino.dart';

class UIScale {
  static double getScale(BuildContext context) {
    double scale = 1.0;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double widthRatio = width / 375;
    double heightRatio = height / 667;
    scale = widthRatio > heightRatio ? heightRatio : widthRatio;
    return scale;
  }

  static double height(BuildContext context, double scale) {
    return MediaQuery.of(context).size.height * (scale / 100);
  }

  static double width(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * (scale / 100);
  }
}
