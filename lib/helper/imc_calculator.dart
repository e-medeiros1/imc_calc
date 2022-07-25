import 'dart:math';

class ImcCalculator {
  int peso = 50;
  int altura = 160;
  int idade = 20;
  double imc = 0.0;

  double calculaImc() {
    imc = peso / pow(altura / 100, 2);
    if (imc != 0) {
      return imc;
    } else {
      return 0;
    }
  }

  interpretacaoMasculina() {
    if (imc != 0) {
      if (imc < 20) {
        return 'Você está abaixo do peso, tente comer mais';
      } else if (imc >= 20 && imc <= 24.9) {
        return 'Excelente! Seu peso está normal, mantenha assim';
      } else if (imc >= 25 && imc <= 29.9) {
        return 'Você está um pouco acima do peso, tente se exercitar mais';
      } else if (imc >= 30 && imc <= 39.9) {
        return 'Atenção! Você está acima do peso, procure uma nutricionista';
      } else if (imc > 43) {
        return 'Cuidado! Seu peso está muito acima do normal, procure um médico imediatamente';
      }
    }
  }

  interpretacaoFeminina() {
    if (imc != 0) {
      if (imc < 20) {
        return 'Você está abaixo do peso, tente comer mais';
      } else if (imc >= 19 && imc <= 23.9) {
        return 'Excelente! Seu peso está normal, mantenha assim';
      } else if (imc >= 24 && imc <= 28.9) {
        return 'Você está um pouco acima do peso, tente se exercitar mais';
      } else if (imc >= 23 && imc <= 38.9) {
        return 'Atenção! Você está acima do peso, procure uma nutricionista';
      } else if (imc > 39) {
        return 'Cuidado! Seu peso está muito acima do normal, procure um médico imediatamente';
      }
    }
  }

}
