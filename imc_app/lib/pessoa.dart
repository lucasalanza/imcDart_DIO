class Pessoa {
  late String nome;
  late double peso;
  late double altura;
  late double imc;
  late String faixaImc;

  Pessoa(this.nome, this.peso, this.altura);

  double calculaImc() {
    imc = peso / (altura * altura);
    faixaImc = _determinarFaixaImc(imc);
    return imc;
  }

  String _determinarFaixaImc(double imc) {
    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc < 17) {
      return 'Magreza moderada';
    } else if (imc < 18.5) {
      return 'Magreza leve';
    } else if (imc < 25) {
      return 'Saudavel';
    } else if (imc < 30) {
      return 'Sobrepeso';
    } else if (imc < 35) {
      return 'Obesidade grau 1';
    } else if (imc < 40) {
      return 'Obesidade grau 2 (severa)';
    } else {
      return 'Obesidade grau 3 (mórbida)';
    }
  }

  @override
  String toString() {
    return 'Nome: $nome, Peso: $peso, Altura: $altura, IMC: ${imc.toStringAsFixed(2)} - Faixa do IMC: $faixaImc';
  }
}
