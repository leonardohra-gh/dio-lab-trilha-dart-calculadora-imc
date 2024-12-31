import 'package:dio_lab_trilha_dart_calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test("testar imc valor", () {
    Pessoa p = Pessoa(86, 1.85);
    double imc = p.getImc();
    String imcFaixa = p.getFaixaIMC();
    expect(imc.toStringAsFixed(1), "25.1");
    expect(imcFaixa, equals("Sobrepeso"));
  });

  test("testar peso inválido", () {
    expect(() => Pessoa(-1, 1.85), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("testar altura inválida", () {
    expect(() => Pessoa(80, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
}
