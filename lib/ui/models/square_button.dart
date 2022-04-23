import 'package:flutter/material.dart';
import 'package:fossa_septica/core/scale.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: null,
        icon: Image.asset('assets/images/fossa_septica_botao.png'),
      ),
      //opcao 2
      height: UIScale.width(context, 10),
      width: UIScale.width(context, 10),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(255, 191, 64, 1), width: 5.0),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25))),
    );
  }
}
