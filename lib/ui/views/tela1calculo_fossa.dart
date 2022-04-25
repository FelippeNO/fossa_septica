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

class _Tela1CalculoFossaState extends State<Tela1CalculoFossa> with SingleTickerProviderStateMixin {
  final TextEditingController controleQntd = TextEditingController();
  final double primaryPaddingScale = Scale.width(3);
  final EdgeInsets primaryPadding = EdgeInsets.all(Scale.width(3));
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

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
                      items: Tela1Controller.ocupTipoList,
                      value: Tela1Controller.valorOcup,
                      onChanged: (int? newValue) {
                        setState(() {
                          Tela1Controller.valorOcup = newValue!;
                          Tela1Controller.valorPred = 0;
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
                      value: Tela1Controller.valorPred,
                      onChanged: Tela1Controller.valorOcup != 0
                          ? (int? newValue) {
                              setState(() {
                                Tela1Controller.valorPred = newValue!;
                                controleQntd.clear();
                              });
                            }
                          : null,
                      items: Tela1Controller.valorOcup == 1
                          ? Tela1Controller.predTipPermList
                          : Tela1Controller.predTipTempList,
                    ),
                  ),
                  Padding(
                      padding: primaryPadding,
                      child: PrimaryRoundedBox(
                        'Digite a quantidade de $tipagem',
                        fontSize: AppFontSize.s2,
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Scale.width(25), vertical: Scale.width(3)),
                    child: (PrimaryTextFormField(
                        enabled: Tela1Controller.valorPred != 0 ? true : false,
                        textController: Tela1Controller.controleQntd)),
                  ),
                  ValueListenableBuilder(
                      valueListenable: Tela1Controller.controleQntd,
                      builder: (context, controller, _) {
                        int valorPred = Tela1Controller.valorPred;
                        int valorOcup = Tela1Controller.valorOcup;
                        return Column(children: [
                          AnimatedContainer(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Scale.width(3.5)),
                                gradient:
                                    valorOcup != 0 ? AppGradients.transparent : AppGradients.primaryBlueGradientBCtTC),
                            duration: Duration(milliseconds: 300),
                            height: valorOcup != 0 ? Scale.width(11) : 0,
                            child: AnimatedContainer(
                              margin: EdgeInsets.all(Scale.width(0.5)),
                              decoration: BoxDecoration(
                                  gradient: AppGradients.supernovaGradient,
                                  borderRadius: BorderRadius.circular(Scale.width(3))),
                              transformAlignment: Alignment.center,
                              duration: Duration(milliseconds: 50),
                              height: valorOcup != 0 ? Scale.width(10) : 0,
                              child: Padding(
                                padding: primaryPadding,
                                child: Text(
                                  "Tipo da Ocupação: " + Tela1Controller.parseValorOcup(valorOcup),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: AppFontSize.s3, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Scale.width(2)),
                          AnimatedContainer(
                            decoration: BoxDecoration(
                                gradient: AppGradients.supernovaGradient,
                                borderRadius: BorderRadius.circular(Scale.width(3))),
                            transformAlignment: Alignment.center,
                            duration: Duration(milliseconds: 200),
                            height: valorPred != 0 ? Scale.width(14) : 0,
                            //width: Scale.width(70),
                            child: Padding(
                              padding: primaryPadding,
                              child: Text(
                                "Tipo do Prédio: " + Tela1Controller.parseValorPred(valorOcup, valorPred),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: AppFontSize.s3, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: Scale.width(2)),
                          AnimatedContainer(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Scale.width(3.5)),
                                gradient: (Tela1Controller.controleQntd.text != "0" ||
                                        Tela1Controller.controleQntd.text.isNotEmpty)
                                    ? AppGradients.transparent
                                    : AppGradients.primaryBlueGradientBCtTC),
                            duration: Duration(milliseconds: 300),
                            height: (Tela1Controller.controleQntd.text != "0" ||
                                    Tela1Controller.controleQntd.text.isNotEmpty)
                                ? Scale.width(11)
                                : 0,
                            width: Scale.width(42),
                            child: AnimatedContainer(
                              margin: EdgeInsets.symmetric(horizontal: Scale.width(0.5), vertical: Scale.width(0.5)),
                              decoration: BoxDecoration(
                                  gradient: AppGradients.supernovaGradient,
                                  borderRadius: BorderRadius.circular(Scale.width(3))),
                              transformAlignment: Alignment.center,
                              duration: Duration(milliseconds: 50),
                              height: (Tela1Controller.controleQntd.text != "0" ||
                                      Tela1Controller.controleQntd.text.isNotEmpty)
                                  ? Scale.width(10)
                                  : 0,
                              width: Scale.width(40),
                              child: Padding(
                                padding: primaryPadding,
                                child: Text(
                                  "Pessoas:" + Tela1Controller.controleQntd.text,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: AppFontSize.s3, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 191, 64, 1)),
                            ),
                            child: Text("Avançar >"),
                            onPressed:
                                (Tela1Controller.controleQntd.text.isEmpty || Tela1Controller.controleQntd.text == "0")
                                    ? null
                                    : () => {},
                          )
                        ]);
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
