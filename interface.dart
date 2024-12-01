import 'dart:io';

void exibirMenuPrincipal(){

  print('\n=== Caixa Eletrônico ===');
  print('1 - Saque');
  print('2 - Depósito');
  print('3 - Saldo');
  print('4 - Extrato');
  print('5 - Simular Investimento');
  print('6 - Pagar Contas');
  print('7 - Doação para ONG');
  print('0 - Sair');
  print('Digite a opção desejada:');

}

String? lerEntradaUsuario(){
  return stdin.readLineSync();
}

void exibirMensagem(String mensagem){
  print(mensagem);
}

void exibirErro(String mensagem){
  print('Erro: $mensagem');
}