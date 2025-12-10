import 'dart:io';
void main(){

  /*
  print("Insira sua idade para verificar se você pode ou não dirigir");
  int idade = 0;

  String? entrada = stdin.readLineSync();
  
   
   // tratamento de null 
   if (entrada != null){
    if (entrada != ""){
      idade = int.parse(entrada);
    }
   }
  
  void verificarIdade(){
  if (idade >= 18) {
    print('Você pode dirigir um veículo.');
  } else {
    print('Você não pode dirigir um veículo.');
  }
}
  }
  verificarIdade();

  print("Insira um número de 1 a 12 e retornaremos o mês correspondente. ");
  int num = 0;

  String? entradaUsuario = stdin.readLineSync();

  if (entradaUsuario != null){
    if (entradaUsuario != ""){
      num = int.parse(entradaUsuario);
    }
  }


  void retornaMes(){
    switch(num){

      case 1:
      print("Janeiro");
      break;

      case 2:
      print("Fevereiro");
      break;

      case 3:
      print("Março");
      break;

      case 4:
      print("Abril");
      break;

      case 5:
      print("Maio");
      break;

      case 6:
      print("Junho");
      break;

      case 7:
      print("Julho");
      break;

      case 8:
      print("Agosto");
      break;

      case 9:
      print("Setembro");
      break;

      case 10:
      print("Outubro");
      break;

      case 11:
      print("Novembro");
      break;

      case 12:
      print("Dezembro");
      break;
    }
  }

  retornaMes();
  

  
  
  print('Boas-vindas ao seu banco digital!');

  double saldo = 1000.0; // Saldo inicial em reais
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  

  if (saldo >= valorPix){
    print("Transação realizada com sucesso. Novo saldo: "); 
    print(saldo - valorPix);
  } else {
    print("Saldo insuficiente. Seu saldo é de $saldo");
  }
*/

print('Digite sua idade:');


int idadeMinima = 0; 

String? entrada = stdin.readLineSync();

if (entrada != null){
  if (entrada != ""){
    idadeMinima = int.parse(entrada);
  }
}


void verificaIdadeParaDirigir() {

  if (idadeMinima == 16) {
    print("Você pode dirigir apenas nos EUA.");

  } else if (idadeMinima >= 18 && idadeMinima < 20) {
    print("Você pode dirigir no Brasil e nos EUA, mas não no Japão.");

  } else if (idadeMinima >= 20) {
    print("Você pode dirigir no Japão, no Brasil e nos EUA.");

  } else {
    print("Você ainda não pode dirigir.");
  }
}



verificaIdadeParaDirigir(); 

}