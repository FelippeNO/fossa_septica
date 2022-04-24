import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class PrimaryRoundedBoxButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  const PrimaryRoundedBoxButton(this.text, {Key? key, required this.onPressed, this.textColor = AppColors.rollingStone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text, style: TextStyle(color: textColor)),
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: AppBorderRadius.brAll6)),
          backgroundColor: MaterialStateProperty.all(Colors.white)),
    );
  }
}
