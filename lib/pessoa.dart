import 'dart:math';

class Pessoa {
  final double _pesoEmKg;
  final double _alturaEmMetros;
  double _imc = 0;

  Pessoa(this._pesoEmKg, this._alturaEmMetros) {
    if (_pesoEmKg <= 0) {
      throw ArgumentError("Peso inválido");
    }

    if (_alturaEmMetros <= 0) {
      throw ArgumentError("Altura inválida");
    }

    _imc = _pesoEmKg / pow(_alturaEmMetros, 2);
  }

  String getIMCComFaixa() {
    return "${_imc.toStringAsFixed(1)} (${getFaixaIMC()})";
  }

  double getImc() {
    return _imc;
  }

  String getFaixaIMC() {
    switch (_imc) {
      case > 40:
        return "Obesidade grau III";
      case > 35:
        return "Obesidade grau II";
      case > 30:
        return "Obesidade grau I";
      case > 25:
        return "Sobrepeso";
      case > 18.6:
        return "Normal";
      case <= 18.5:
        return "Abaixo do normal";
      default:
        return "Não sei nem como você chegou aqui";
    }
  }
}
