
import 'dart:io';

void main() {
  double numeroUm = 0; // converte string p double
  double numDois = 0; // converte string p double
  String operacao = ""; 


void soma(){
  print(numeroUm + numDois);
}


/* escopo é fechado. a funcao soma só tem acesso as variaveis numeroUm e numDois, 
porque ela foi declarada dentro de void.*/

void subtracao(){
  print(numeroUm - numDois);
}

void divisao(){
  print(numeroUm / numDois);
}


void multiplicacao(){
  print(numeroUm * numDois);
}

void calcular(){
  switch(operacao) {
  case "+": 
  soma();

  case "-":
  subtracao();

  case "*":
  multiplicacao();

  case "/":
  divisao();
  break; 
  }
}

print("Digite o primeiro valor: ");

//tratamento de erro para casos de valores nulos
//atribuindo um novo stdin as variaveis de numUm, numDis e operacao 
// variavel de entrada. string que pode vir nula.
String? entrada = stdin.readLineSync();
if (entrada != null){
  if (entrada != ""){
    numeroUm = double.parse(entrada);
  }
}

print("Digite uma operação: ");

entrada = stdin.readLineSync();

if (entrada != null){
  if (entrada != ""){
    operacao = entrada; 
  }
}

print("Digite o segundo valor: ");

entrada = stdin.readLineSync();
if (entrada != null){
  if (entrada != ""){
    numDois = double.parse(entrada);
  }
}

print("O resultado da operação é: ");

calcular();

}