import 'package:flutter/material.dart';
import 'package:fossa_septica/ui/home2.dart';
import 'ui/home.dart';
import 'ui/intro.dart';


//VARIÁVEIS GLOBAIS

String valor1_selecionado = "Clique para selecionar";
String valor2_selecionado = "Clique para selecionar";
String valor3_selecionado = "Clique para selecionar";
int tipOcup = 0;
int tipPredio = 0;
double contDiaria = 0;
double lF = 0;
String tipagem = "pessoas";
double qntdPessoas = 0;
double qntidadeEmDouble = 0;
double qntidadeTempEmDouble = 0;
double contDiariaOcup = 0;
double pDetEsgoto = 0;
double tempMesFrio = 0;
double intervaloLimpeza = 0;
double K = 0;
double volumeUtil = 0;

void main() => runApp(MaterialApp(home: Intro()));

//void main() => runApp(MaterialApp(home: FossaSeptica()));
