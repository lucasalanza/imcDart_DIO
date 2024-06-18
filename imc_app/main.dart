import 'dart:io';
import 'package:imc_app/pessoa.dart';

void main() {
  List<Pessoa> pessoas = [];

  String continua = 'S';
  print('\nBem vindo a ferramenta para calculo do IMC');
  print('Nós seguimos esta tabela para classificação');
  print('\nTABELA IMC');

  print('\nFaixas de IMC:');
  print('Magreza grave: IMC < 16');
  print('Magreza moderada: 16 <= IMC < 17');
  print('Magreza leve: 17 <= IMC < 18.5');
  print('Saudável: 18.5 <= IMC < 25');
  print('Sobrepeso: 25 <= IMC < 30');
  print('Obesidade grau 1: 30 <= IMC < 35');
  print('Obesidade grau 2 (severa): 35 <= IMC < 40');
  print('Obesidade grau 3 (mórbida): IMC >= 40');
  print('');

  do {
    try {
      // Leitura do nome
      print('\nDigite o nome:');
      String nome = stdin.readLineSync()!;

      // Leitura do peso
      print('Digite o peso (em kg):');
      double peso = double.parse(stdin.readLineSync()!);

      // Leitura da altura
      print('Digite a altura (em metros):');
      double altura = double.parse(stdin.readLineSync()!);

      // Criação da instância de Pessoa e cálculo do IMC
      Pessoa pessoa = Pessoa(nome, peso, altura);
      double imc = pessoa.calculaImc();
      pessoas.add(pessoa);
      // Imprimir o resultado do cálculo
      print(
          '\nO IMC de ${pessoa.nome} é ${imc.toStringAsFixed(2)} - Faixa do IMC: ${pessoa.faixaImc}');
    } catch (e) {
      print(
          '\nErro: Entrada inválida. Por favor, insira valores numéricos para peso e altura.');
    }
    print('\ndeseja continuar? (S/N)');
    continua = stdin.readLineSync()!;
  } while (continua == 'S' || continua == 's');
  print('\ndeseja Exibir a lista das pessoas informadas? (S/N)');
  continua = stdin.readLineSync()!;
  if (continua == 'S' || continua == 's') {
    pessoas.forEach((pessoa) {
      print('\n{pessoa.toString()}');
    });
  }
}
