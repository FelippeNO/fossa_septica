class FossaEntity {
  double contDiaria;
  double lF;
  String tipagem;
  double qntidadeEmDouble;
  double qntidadeTempEmDouble;
  double contDiariaOcup;
  double pDetEsgoto;
  double tempMesFrio;
  double intervaloLimpeza;
  double K;
  double volumeUtil;

  FossaEntity({
    this.contDiaria = 0,
    this.lF = 0,
    this.tipagem = "pessoas",
    this.qntidadeEmDouble = 0,
    this.qntidadeTempEmDouble = 0,
    this.contDiariaOcup = 0,
    this.pDetEsgoto = 0,
    this.tempMesFrio = 0,
    this.intervaloLimpeza = 0,
    this.K = 0,
    this.volumeUtil = 0,
  });
}

class OcupacaoEntity {
  final int tipOcup;
  final int tipPredio;
  final double qntdPessoas;

  OcupacaoEntity({
    this.tipOcup = 0,
    this.tipPredio = 0,
    this.qntdPessoas = 0,
  });
}
