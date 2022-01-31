import 'package:app_imc/app/pages/home_mvc/imc_person_model.dart';
import 'package:flutter/cupertino.dart';

class ImcController {
  double _peso = 0.0;
  double _altura = 0.0;

  void setPeso(String value) => _peso = double.tryParse(value) ?? 0;
  void setAlutra(String value) => _altura = double.tryParse(value) ?? 0;

  final result = ValueNotifier<String>('');
  void resultImc() {
    final imcValue = PersonModel(peso: _peso, altura: _altura).calcImc();
    if (imcValue < 18.4) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está Abaixo do Peso! ';
    } else if (imcValue < 24.9) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está com Peso Normal! ';
    } else if (imcValue < 29.9) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está com Sobre Peso! ';
    } else if (imcValue < 34.9) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está com Obesidade grau 1! ';
    } else if (imcValue < 39.9) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está com Obesidade grau 2! ';
    } else if (imcValue > 40) {
      result.value =
          'Seu Imc é: ${imcValue.round()}, você está com Obesidade grau 3! ';
    }
  }
}
