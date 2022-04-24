import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';
import 'package:fossa_septica/core/shadows.dart';

class PrimaryDropDownButton extends StatelessWidget {
  final List<DropdownMenuItem<int>> items;
  final int value;
  final Function(int?)? onChanged;
  const PrimaryDropDownButton({Key? key, required this.items, required this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints.tight(Size(Scale.width(80), Scale.width(12))),
      decoration: BoxDecoration(
        boxShadow: AppShadows.bs1,
        gradient: AppGradients.secundaryBlueGradientTLtBR,
        borderRadius: AppBorderRadius.brAll2,
      ),
      child: DropdownButton(
        alignment: Alignment.center,
        underline: const SizedBox(),
        dropdownColor: Colors.white,
        borderRadius: AppBorderRadius.brAll5,
        value: value,
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
