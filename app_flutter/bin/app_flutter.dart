// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

void main(List<String> argumentos) {
  /*
  var prova1 = 9;
  var prova2 = 5;
  var media = (prova1 + prova2) / 2;

  print(media);
  print(media >= 7);
  print(media < 7);
  print(prova1 == prova2);
  print(prova1 != prova2);
  */

  print("Bem vindo(a) a Calculadora!");
  //print("Informe o primeiro número:");
  //var line = stdin.readLineSync(encoding: utf8);
  var num1 = double.parse(
      lerConsole("Informe o primeiro número:")); //double.parse(line ?? "0");

  //print("Informe o segundo número:");
  //line = stdin.readLineSync(encoding: utf8);
  var num2 = double.parse(
      lerConsole("Informe o segundo número:")); //double.parse(line ?? "0");

  //print("Informe a operação matemática (+, -, *, /):");
  //line = stdin.readLineSync(encoding: utf8);
  var operacao =
      lerConsole("Informe a operação matemática (+, -, *, /):"); //line ?? "";

  double resultado = 0.0;

  switch (operacao) {
    case "+":
      resultado = soma(num1, num2); //resultado = num1 + num2;
      break;
    case "-":
      resultado = subtracao(num1, num2); //resultado = num1 - num2;
      break;
    case "*":
      resultado = multiplicacao(num1, num2); //resultado = num1 * num2;
      break;
    case "/":
      resultado = divisao(num1, num2); //resultado = num1 / num2;
      break;
    default:
      print("Operação inválida!\n");
      exit(0);
  }

  /*
  if (operacao == "+") {
    resultado = num1 + num2;
  } else if (operacao == "-") {
    resultado = num1 - num2;
  } else if (operacao == "*") {
    resultado = num1 * num2;
  } else if (operacao == "/") {
    resultado = num1 / num2;
  } else {
    print("Operação inválida!");
    exit(0);
  }
  */

  print("O resultado da operação $num1 $operacao $num2 é: $resultado .\n");
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double soma(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtracao(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplicacao(double numero1, double numero2) {
  return numero1 * numero2;
}

double divisao(double numero1, double numero2) {
  return numero1 / numero2;
}
