import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class AnimatedInformationTag extends StatelessWidget {
  final LinearGradient borderGradient;
  final double heightWithBorder;
  final double heightWithoutBorder;
  final String text;
  const AnimatedInformationTag(
      {Key? key,
      this.borderGradient = AppGradients.secundaryBlueGradientTLtBR,
      this.heightWithBorder = 160,
      this.heightWithoutBorder = 150,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(Scale.width(3.5)), gradient: borderGradient),
      duration: const Duration(milliseconds: 300),
      height: heightWithBorder,
      child: AnimatedContainer(
        margin: EdgeInsets.all(Scale.width(0.5)),
        decoration: BoxDecoration(
            gradient: AppGradients.supernovaGradient, borderRadius: BorderRadius.circular(Scale.width(3))),
        transformAlignment: Alignment.center,
        duration: const Duration(milliseconds: 50),
        height: heightWithoutBorder,
        child: Padding(
          padding: EdgeInsets.all(Scale.width(3)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: AppFontSize.s3, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
