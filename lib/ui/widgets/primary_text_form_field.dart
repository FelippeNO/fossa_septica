import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class PrimaryTextFormField extends StatelessWidget {
  final TextEditingController textController;
  final bool enabled;
  final Color primaryColor;
  final Color disabledColor;
  final BorderRadius generalBorderRadius = AppBorderRadius.brAll2;
  final String hintText;

  PrimaryTextFormField(
      {Key? key,
      required this.textController,
      required this.enabled,
      this.primaryColor = AppColors.supernova,
      this.disabledColor = AppColors.rollingStone,
      this.hintText = "Ex.: 5"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      enabled: enabled,
      keyboardType: TextInputType.number,
      cursorColor: AppColors.supernova,
      style: TextStyle(color: primaryColor, fontSize: AppFontSize.s2, fontWeight: FontWeight.bold),
      controller: textController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.5), width: 2.5),
            borderRadius: AppBorderRadius.brAll2),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: disabledColor, width: 2.0), borderRadius: generalBorderRadius),
        focusedBorder: OutlineInputBorder(
          borderRadius: generalBorderRadius,
          borderSide: BorderSide(
            color: primaryColor,
            width: 2.0,
          ),
        ),
        labelStyle: TextStyle(color: primaryColor),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.4), fontWeight: FontWeight.normal),
      ),
    );
  }
}
