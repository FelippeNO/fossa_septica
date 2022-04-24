// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fossa_septica/core/colors.dart';
import 'package:fossa_septica/core/scale.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/controllers/tela1_calculo_fossa_controller.dart';
import 'package:fossa_septica/ui/views/tela2.dart';
import 'package:fossa_septica/ui/widgets/primary_dropdown_button.dart';
import 'package:fossa_septica/ui/widgets/primary_rounded_box.dart';
import 'package:fossa_septica/ui/widgets/primary_text_form_field.dart';
import 'package:fossa_septica/ui/widgets/rounded_primary_appbar.dart';

class Tela1CalculoFossa extends StatefulWidget {
  const Tela1CalculoFossa({Key? key}) : super(key: key);

  @override
  _Tela1CalculoFossaState createState() => _Tela1CalculoFossaState();
}

class _Tela1CalculoFossaState extends State<Tela1CalculoFossa> {
  final TextEditingController controleQntd = TextEditingController();
  final double primaryPaddingScale = Scale.width(3);
  final EdgeInsets primaryPadding = EdgeInsets.all(Scale.width(3));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: RoundedPrimaryAppBar(
        fontSize: AppFontSize.s1,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: AppGradients.primaryBlueGradientBCtTC,
          ),
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Scale.width(7),
                        bottom: primaryPaddingScale,
                        right: primaryPaddingScale,
                        left: primaryPaddingScale),
                    child: PrimaryRoundedBox(
                      'Selecione o tipo da ocupação',
                      fontSize: AppFontSize.s2,
                    ),
                  ),
                  Padding(
                    padding: primaryPadding,
                    child: PrimaryDropDownButton(
                      items: Tela1Controller.dropDownList1,
                      value: Tela1Controller.valor1Selecionado,
                      onChanged: (int? newValue) {
                        setState(() {
                          Tela1Controller.valor1Selecionado = newValue!;
                          Tela1Controller.valor2Selecionado = 0;
                          controleQntd.clear();
                        });
                      },
                    ),
                  ), // TERMINA AQUI O PRIMEIRO DROPDOWN
                  Padding(
                    padding: primaryPadding,
                    child: PrimaryRoundedBox(
                      'Selecione o tipo do prédio',
                      fontSize: AppFontSize.s2,
                    ),
                  ),
                  Padding(
                    padding: primaryPadding,
                    child: PrimaryDropDownButton(
                      value: Tela1Controller.valor2Selecionado,
                      onChanged: Tela1Controller.valor1Selecionado != 0
                          ? (int? newValue) {
                              setState(() {
                                Tela1Controller.valor2Selecionado = newValue!;
                                controleQntd.clear();
                              });
                            }
                          : null,
                      items: Tela1Controller.dropDownList2,
                    ),
                  ),
                  Padding(
                      padding: primaryPadding,
                      child: PrimaryRoundedBox(
                        'Digite a quantidade de $tipagem',
                        fontSize: AppFontSize.s2,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Scale.width(25), vertical: Scale.width(5)),
                    child: (PrimaryTextFormField(
                        enabled: Tela1Controller.valor2Selecionado != 0 ? true : false, textController: controleQntd)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 191, 64, 1)),
                    ),
                    child: Text("Avançar >"),
                    onPressed: () => {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
