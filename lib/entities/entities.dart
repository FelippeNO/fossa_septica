class FossaEntity {
  final double contDiaria;
  final double lF;
  final String tipagem;
  final double qntidadeEmDouble;
  final double qntidadeTempEmDouble;
  final double contDiariaOcup;
  final double pDetEsgoto;
  final double tempMesFrio;
  final double intervaloLimpeza;
  final double K;
  final double volumeUtil;

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
