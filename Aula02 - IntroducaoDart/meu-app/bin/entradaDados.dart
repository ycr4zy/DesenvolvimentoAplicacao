import 'dart:io';

void main() {

  print('Digite seu nome: ');
  String? nome = stdin.readLineSync();
  print('Seu nome é $nome');

  print('Digite a sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);
  print('A sua idade é de $idade');

  print('Digite sua altura: ');
  double altura = double.parse(stdin.readLineSync()!);
  print('A sua altura é de $altura');

  print('FIM');


}