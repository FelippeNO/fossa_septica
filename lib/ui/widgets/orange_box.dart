import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class OrangeBox extends StatelessWidget {
  final String text;
  final double fontSize;
  const OrangeBox(this.text, {Key? key, this.fontSize = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Scale.width(75),
      decoration:
          BoxDecoration(color: AppColors.supernova, borderRadius: BorderRadius.all(Radius.circular(Scale.width(6)))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Scale.width(3)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: AppColors.dodgerBluePRIMARY, fontWeight: FontWeight.bold, fontSize: fontSize),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
