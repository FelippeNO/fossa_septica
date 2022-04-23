import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class OrangeBox extends StatelessWidget {
  final String text;
  const OrangeBox(this.text, {Key? key}) : super(key: key);

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
            style: const TextStyle(color: AppColors.dodgerBluePRIMARY, fontWeight: FontWeight.bold, fontSize: 19.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
