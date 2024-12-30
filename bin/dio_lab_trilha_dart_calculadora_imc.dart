import "dart:io";

import "package:dio_lab_trilha_dart_calculadora_imc/pessoa.dart";

void main(List<String> arguments) {
  try {
    Pessoa pessoa = pedirPessoaParaUsuario();
    print(
        "O IMC calculado com as informações passadas é de: ${pessoa.getIMC()}");
  } on ArgumentError catch (e) {
    print(e.message);
  }
}

Pessoa pedirPessoaParaUsuario() {
  String mensagemPeso = "Digite seu peso em kilos (Exemplo: 80.3):";
  double pesoEmKg = pedirDouble(mensagemPeso);
  String mensagemAltura = "Digite sua altura em metros (Exemplo: 1.83):";
  double alturaEmMetros = pedirDouble(mensagemAltura);

  return Pessoa(pesoEmKg, alturaEmMetros);
}

double pedirDouble(String mensagem) {
  String valorinvalido = "Valor digitado inválido";
  print(mensagem);

  String? valorDigitado = stdin.readLineSync();

  if (valorDigitado == null) {
    throw ArgumentError(valorinvalido);
  } else {
    double? valorDouble = double.tryParse(valorDigitado);
    if (valorDouble == null) {
      throw ArgumentError(valorinvalido);
    } else {
      return valorDouble;
    }
  }
}
