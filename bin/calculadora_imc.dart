import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main(List<String> arguments) {
  String? nome;
  double? peso;
  double? altura;
  Pessoa pessoa;

  print("Escreva seu nome: ");
  nome = stdin.readLineSync(encoding: utf8);
  if (nome!.isEmpty) {
    print("Por favor, insira um nome");
    exit(0);
  }

  print("Escreva seu peso: ");
  peso = double.tryParse(stdin.readLineSync(encoding: utf8) as String);
  if (peso == null) {
    print("Por favor, insira um peso válido");
    exit(0);
  }

  print("Escreva sua altura: ");
  altura = double.tryParse(stdin.readLineSync(encoding: utf8) as String);
  if (altura == null) {
    print("Por favor, insira uma altura válida");
    exit(0);
  }

  try {
    pessoa = new Pessoa(nome as String, peso as double, altura as double);
  } catch (e) {
    print("Um erro foi encontrado, tente novamente");
    print("Erro: $e");
    exit(0);
  }
  Imc.classificarImc(pessoa.getPeso(), pessoa.getAltura());
}
