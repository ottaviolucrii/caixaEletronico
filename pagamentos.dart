class Pagamento{
  String codigoBarras;
  double valor;
  String nomeBeneficiario;

  Pagamento(
    this.codigoBarras,
    this.valor,
    this.nomeBeneficiario,
  );

  void exibirDetalhes() {
    print('Código de barras: $codigoBarras');
    print('Valor: R\$ $valor');
    print('Beneficiário: $nomeBeneficiario');
  }

}
