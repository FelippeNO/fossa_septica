import 'package:flutter/material.dart';
import 'package:fossa_septica/main.dart';
import 'package:fossa_septica/ui/home.dart';
import 'package:fossa_septica/ui/tela2.dart';

class Tela_Resultado_Vol_Util extends StatefulWidget {
  @override
  _Tela_Resultado_Vol_UtilState createState() =>
      _Tela_Resultado_Vol_UtilState();
}

class _Tela_Resultado_Vol_UtilState extends State<Tela_Resultado_Vol_Util> {
  @override
  Widget build(BuildContext context) {
    implementarK();
    calcularVolumeUtil(volumeUtil);
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Fossa Séptica"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.75),
                        )
                      ]),
                  height: 280.0,
                  padding: EdgeInsets.all(3.0),
                  margin: EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Tipo da Ocupação: $valor1_selecionado",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Tipo do Prédio: $valor2_selecionado",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Quantidade de $tipagem: ${qntidadeEmDouble.toInt()}",
                          style: TextStyle(color: Colors.white)),
                      Text("Contribuição Diária: $contDiaria L/dia/pessoa",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Contribuição Diária da Ocupação: $contDiariaOcup L/dia",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Período de Detenção do Esgoto: $pDetEsgoto dia",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Contribuição de lodo fresco: $lF L/unidade x dia",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Intervalo entre as limpezas: $valor3_selecionado",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "Temperatura média do mês mais frio: $qntidadeTempEmDouble Celsius",
                          style: TextStyle(color: Colors.white)),  
                      Text(
                          "Taxa de acumulação de lodo (K): $K",
                          style: TextStyle(color: Colors.white)),
                      Text(
                          "lo ${calcularVolumeUtil(volumeUtil)}",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ), 
              ),
            ),
            Padding(padding: EdgeInsets.all(12.0),
            child: Text("Volume Necessário da Fossa Séptica:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight:FontWeight.bold
            ),
            ),
            ),
            Padding(padding: EdgeInsets.all(12.0),
            child: Text("${calcularVolumeUtil(volumeUtil).toStringAsPrecision(3)} m³",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight:FontWeight.bold
            ),),)
            ],
        )
        );

  }

}

void implementarK (){
      if (valor3_selecionado == "1 ano"){
        if (qntidadeTempEmDouble <= 10) {
          K = 94;
        } else if (qntidadeTempEmDouble > 10 && qntidadeTempEmDouble <= 20){
          K = 65;
        } else if (qntidadeTempEmDouble > 20){
          K = 57;
        }
      } else if (valor3_selecionado == "2 anos"){
        if (qntidadeTempEmDouble <= 10) {
          K = 134;
        } else if (qntidadeTempEmDouble > 10 && qntidadeTempEmDouble <= 20){
          K = 105;
        } else if (qntidadeTempEmDouble > 20){
          K = 97;
        }  
      } else if (valor3_selecionado == "3 anos"){
        if (qntidadeTempEmDouble <= 10) {
          K = 174;
        } else if (qntidadeTempEmDouble > 10 && qntidadeTempEmDouble <= 20){
          K = 145;
        } else if (qntidadeTempEmDouble > 20){
          K = 137;
        }  
      } else if (valor3_selecionado == "4 anos"){
        if (qntidadeTempEmDouble <= 10) {
          K = 214;
        } else if (qntidadeTempEmDouble > 10 && qntidadeTempEmDouble <= 20){
          K = 185;
        } else if (qntidadeTempEmDouble > 20){
          K = 177;
        }  
      } else if (valor3_selecionado == "5 anos"){
        if (qntidadeTempEmDouble <= 10) {
          K = 254;
        } else if (qntidadeTempEmDouble > 10 && qntidadeTempEmDouble <= 20){
          K = 225;
        } else if (qntidadeTempEmDouble > 20){
          K = 217;
        }  
      }
}

double calcularVolumeUtil (double volumeUtil){

volumeUtil = 0;

double KxLf = K*lF;
double CxT = contDiaria*pDetEsgoto;
double CxTKxLf = CxT + KxLf;
double NxCxTKxLf = qntidadeEmDouble * CxTKxLf;
double SomaNxCxTKxLf = 1000 + NxCxTKxLf;
volumeUtil = SomaNxCxTKxLf * 1/1000;

debugPrint("$volumeUtil");
return volumeUtil;

}
