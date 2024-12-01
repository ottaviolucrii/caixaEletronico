import 'conta.dart';
import 'investimentos.dart';
import 'interface.dart';

void simularInvestimento(Conta conta){

print('\n === Simulação de Investimento ===');
print('Tipos de investimentos disponíveis:');
print('1 - Poupança');
print('2 - Renda Fixa');
print('Escolha o tipo de investimento:');
String? opcao = lerEntradaUsuario();

double taxaJuros;

switch(opcao){
  case '1':
    opcao = 'Poupança';
    taxaJuros = 0.5;
    break;
  case '2':
    opcao = 'Renda Fixa';
    taxaJuros = 1.0;
    break;
  default:
    exibirErro('Opção inválida');
    return;
}

print('Digite o valor a ser investido:');
double valorInvestido = double.parse(lerEntradaUsuario()!);

print('Digite o período do investimento (meses): ');
int periodo = int.parse(lerEntradaUsuario()!);

Investimento investimento = Investimento(opcao, taxaJuros, valorInvestido, periodo);
investimento.exibirDetalhes();

}

void realizarSaque(Conta conta){
  print('Digite o valor a ser sacado:');
  double valor = double.parse(lerEntradaUsuario()!);

  if(conta.sacar(valor)){
    exibirMensagem('Saque realizado com sucesso');
  } else {
    exibirMensagem('Saldo insuficiente');
  }

}

void realizarDeposito(Conta conta){
  exibirMensagem('Digite o valor a ser depositado:');
  double valor = double.parse(lerEntradaUsuario()!);

  conta.depositar(valor);
  exibirMensagem('Depósito realizado com sucesso');
}

void exibirSaldo(Conta conta){
  exibirMensagem('Saldo atual: R\$ ${conta.saldo}');
}

void exibirExtrato(Conta conta){
  conta.exibirExtrato();
}


