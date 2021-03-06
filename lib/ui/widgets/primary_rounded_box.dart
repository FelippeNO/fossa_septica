import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class PrimaryRoundedBox extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const PrimaryRoundedBox(this.text, {Key? key, this.fontSize = 10, this.color = AppColors.supernova})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Scale.width(75),
      decoration: BoxDecoration(borderRadius: AppBorderRadius.brAll6, gradient: AppGradients.supernovaGradientDark),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Scale.width(3)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 89, 255),
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
