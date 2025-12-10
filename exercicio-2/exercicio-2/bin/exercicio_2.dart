import 'dart:io';
 

void main(){
  /*
  
  print("======== Vamos calcular o dobro dos números. ======== \n" "Digite um número?");
  
  int num = int.parse(stdin.readLineSync()!);
  int calculoDobro = num * num;
  print("\n ======== Resultado ======== \n" "O dobro de $num é $calculoDobro" );  

  print("======== Insira 3 idades para calcular a média. ======== \n");
  int idade1 = int.parse(stdin.readLineSync()!);
  int idade2 = int.parse(stdin.readLineSync()!);
  int idade3 = int.parse(stdin.readLineSync()!);
  
  double media = (idade1 + idade2 + idade3)/3;
  
  print("Média da idade: $media");


  String nome = "Ingrid Munhoz";
  String cpf = "128.083.699-83";
  int idade = 28;
  double altura = 1.65;
  bool comunidade = false;

  
  print("Olá, meu nome é $nome. Eu tenho $idade. Meu cpf é $cpf. Minha altura é $altura. E eu ${comunidade ? 'participo da comunidade' : 'não participo da comunidade'}.");


print("===== Insira a quantidade de horas trabalhadas: =====");
int horasTrabalhadas = int.parse(stdin.readLineSync()!);
double calculoHoras = horasTrabalhadas * 50 * (1 - 0.05);
print(calculoHoras);

  print('Boas-vindas ao seu banco digital!');
  double saldo = 1000.0; // Saldo inicial em reais

  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');


  double pontosIniciais = 100;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");

  double pontosRetirados = double.parse(stdin.readLineSync()!);
  
  double pontosRestantes = pontosIniciais - pontosRetirados;

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");

   subtrairPontos(){
    double pontosIniciais = 100;
    print("Você tem $pontosIniciais pontos.");
    print("Quantos pontos você gostaria de resgatar?");
    double pontosRetirados = double.parse(stdin.readLineSync()!);
    double pontosRestantes = pontosIniciais - pontosRetirados;
    print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
    return pontosRestantes;
  }
  subtrairPontos();
  */

  calculoCupons(){
    print("Boas vindas ao mercado No Precinho!");
    print("Insira o valor das suas compras para calcular a quantidade de cupom");
    print("===== Regra: Cada 50 reais = 1 cupom");
    double valorCompras = double.parse(stdin.readLineSync()!);
    double calculo = valorCompras / 50;
    return print('=== Quantidade de cupons: ${calculo.round()}');
  }
  calculoCupons();




}