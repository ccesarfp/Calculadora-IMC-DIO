import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test("Testando Calculo de IMC", () {
    expect(Imc.calcularImc(85, 1.70), greaterThan(29));
  });
  test("Testando Resultado de IMC", () {
    expect(Imc.classificarImc(85, 1.70), equals(null));
  });
}
