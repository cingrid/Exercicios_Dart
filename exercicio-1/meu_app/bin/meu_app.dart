import 'dart:io';

void main(){
  print("Olá. Qual seu nome? ");
  var nome = stdin.readLineSync();
  print("E quantos anos você tem? ");
  var idade = stdin.readLineSync();
  print("Olá, $nome. Você tem $idade anos");
}