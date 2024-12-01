class Conta {
  String numeroConta;
  String nomeTitular;
  double saldo;
  List<String> extrato = [];

  Conta(this.numeroConta, this.nomeTitular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    extrato.add('Depósito de R\$ $valor');
  }

  bool sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      extrato.add('Saque de R\$ $valor');
      print('Saque de R\$ $valor realizado com sucesso');
      print('Saldo restante: R\$ $saldo');

      return true;
    } else {
      print('Saldo insuficiente');
      return false;
    }
  }

  void exibirExtrato() {
    print('Extrato da conta $numeroConta - Titular: $nomeTitular');
    for (var operacao in extrato) {
      print(operacao);
    }
    print('Saldo atual: R\$ $saldo');
  }
}
