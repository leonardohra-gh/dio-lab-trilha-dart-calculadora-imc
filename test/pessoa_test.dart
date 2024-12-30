import 'dart:math';

import 'package:dio_lab_trilha_dart_calculadora_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test("testar imc valor", () {
    Pessoa p = Pessoa(86, 1.85);
    double imc = p.getImc();
    expect(imc.toStringAsFixed(1), "25.1");
  });
}
