import 'package:imc_app/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('calculaImc retorna o valor correto', () {
      Pessoa p = Pessoa('Teste', 70, 1.75);
      expect(p.calculaImc(), closeTo(22.86, 0.01));
    });

    test('IMC deve ser calculado corretamente para diferentes entradas', () {
      Pessoa p1 = Pessoa('Pessoa1', 60, 1.65);
      Pessoa p2 = Pessoa('Pessoa2', 80, 1.80);
      expect(p1.calculaImc(), closeTo(22.04, 0.01));
      expect(p2.calculaImc(), closeTo(24.69, 0.01));
    });
  });
}
