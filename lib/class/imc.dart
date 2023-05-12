class Imc {
  static double calcularImc(double peso, double altura) {
    return (peso) / (altura * altura);
  }

  static classificarImc(double peso, double altura) {
    double imc = calcularImc(peso, altura);
    String resultado;

    if (imc < 16) {
      resultado = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      resultado = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      resultado = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      resultado = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      resultado = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      resultado = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      resultado = "Obesidade Grau II";
    } else {
      resultado = "Obesidade Grau III";
    }

    print("Resultado: $resultado");
  }
}
