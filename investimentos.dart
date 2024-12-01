

class Investimento {
  String tipo;
  double taxaJuros;
  double valorInvestido;
  int periodo;

  Investimento(
    this.tipo, 
    this.taxaJuros, 
    this.valorInvestido, 
    this.periodo);


double calcularRendimento() {
  if (tipo == 'Poupança') {
    return valorInvestido * (1 + (taxaJuros / 100) * (periodo / 12));
  } else if (tipo == 'Renda Fixa') {
    return valorInvestido * (1 + (taxaJuros / 100) * (periodo / 12));
  } else {
    return 0.0;
  }
}

void exibirDetalhes(){
  print('Tipo de investimento: $tipo');
  print('Taxa de juros: $taxaJuros%');
  print('Valor investido: R\$$valorInvestido');
  print('Período: $periodo meses');
  double rendimento = calcularRendimento();
  print('Rendimento: R\$$rendimento');
  print('Valor total após o investimento: R\$${valorInvestido + rendimento}');
}

}