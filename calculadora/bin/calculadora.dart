
import 'dart:io';

void main() {
  double numeroUm = 0; // converte string p double
  double numDois = 0; // converte string p double
  String operacao = ""; 
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"]; //tipando a lista com string. declarando a lista
  

/* escopo é fechado. a funcao soma só tem acesso as variaveis numeroUm e numDois, 
porque ela foi declarada dentro de void.*/
void soma(){
  print(numeroUm + numDois);
}

void subtracao(){
  print(numeroUm - numDois);
}

void divisao(){
  print(numeroUm / numDois);
}

void multiplicacao(){
  print(numeroUm * numDois);
}

// metodos
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
//atribuindo um novo stdin as variaveis de numUm, numDois e operacao 
// variavel de entrada. string que pode vir nula.
entrada = stdin.readLineSync();

if (entrada != null){
  if (entrada != ""){
    numeroUm = double.parse(entrada);
  }
}

// validações extra: operação. valida se ela existe 
// utilizaremos uma lista de strings
void getOperacao(){
  print("Digite uma operação ${operacoes.toString()}");
  entrada = stdin.readLineSync();
  if (entrada != null){
    // função contains verifica se a entrada existe na lista
    if (operacoes.contains(entrada)){
      operacao = entrada!;
    } else {
      print("Operação inválida.");
      getOperacao();//recursão. chamamos a funcao dentro dela mesma. ponto de parada para parar o loop infinito.
      
    }
  }
}

getOperacao();

if (entrada != null){
  if (entrada != ""){
    operacao = entrada!; 
  }
}

print("Digite o segundo valor: ");

entrada = stdin.readLineSync();
if (entrada != null){
  if (entrada != ""){
    numDois = double.parse(entrada!);
  }
}

print("O resultado da operação é: ");

calcular();



}