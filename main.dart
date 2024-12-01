import 'conta.dart';
import 'investimentos.dart';
import 'interface.dart';
import 'operacoes.dart';

void main() {
  Investimento investimento = Investimento('Poupança', 1000.0, 5.0, 12);
  investimento.exibirDetalhes();


Conta minhaConta = Conta('123-4', 'Ottavio', 10000.0);

while(true){

  exibirMenuPrincipal();
  String? opcao = lerEntradaUsuario();

  switch(opcao){
    case '1':
      realizarSaque(minhaConta);
      break;
    case '2':
    realizarDeposito(minhaConta);
    break;
    case '3':
    exibirSaldo(minhaConta);
    break;
    case '4':
    exibirExtrato(minhaConta);
    break;
    case '5':
    simularInvestimento(minhaConta);
    break;
    case '6':
    pagarConta(minhaConta);
    break;
    case '0':
    exibirMensagem('Saindo...');
    return;
    default:
    exibirErro('Opção inválida');

  }

  }
}