import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';

class SquareButton extends StatelessWidget {
  final String imageFile;
  final double size;
  final VoidCallback? onPressed;
  const SquareButton({Key? key, this.imageFile = '', this.size = 38, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: onPressed,
        icon: imageFile == '' ? const SizedBox() : Image.asset(imageFile),
      ),
      //opcao 2
      height: Scale.width(size),
      width: Scale.width(size),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.supernova, width: 5.0),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            Scale.width(6),
          ),
        ),
      ),
    );
  }
}
