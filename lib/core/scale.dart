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
  static double s3 = Scale.width(3.3);
  static double appBarTitleH1 = Scale.width(6);
}

class AppBorderRadius {
  static BorderRadius brAll2 = BorderRadius.all(Radius.circular(Scale.width(2)));
  static BorderRadius brAll3 = BorderRadius.all(Radius.circular(Scale.width(3)));
  static BorderRadius brAll5 = BorderRadius.all(Radius.circular(Scale.width(5)));
  static BorderRadius brAll6 = BorderRadius.all(Radius.circular(Scale.width(6)));
  static BorderRadius brAll10 = BorderRadius.all(Radius.circular(Scale.width(10)));
  static BorderRadius brVerticalBot8 = BorderRadius.vertical(bottom: Radius.circular(Scale.width(8)));
}
