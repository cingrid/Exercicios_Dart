
import 'dart:io';

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!); // converte string p double
  double numDois = double.parse(stdin.readLineSync()!); // converte string p double


// Null safity  proteção de valores vazios. o ! indica que o num nao vai vir nulo

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


soma();
subtracao();
divisao();
multiplicacao();

}
