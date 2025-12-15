import 'dart:io';

void main(){
  List<String> notas = <String>[];
  menu(notas);
}

//funcao de get comandos 
String getComando(){
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = ""; 

  entrada = stdin.readLineSync();

// pegar entrada do usuario, validar se esta nula ou. dentro da lista de comandos 
if (entrada == null || !comandos.contains(entrada)){
  print("Comando inválido");
  getComando();
}

  return entrada!; //pode ser nullable, por isso tem que por o !
}

// funcao de criar notas
//nota como parametro porque eu nao tenho notas dentro do escopo
List<String> adicionaNota(List<String>notas){
  print("Escreva uma nota");
  String? nota = "";
  nota = stdin.readLineSync();
  if (nota == null || nota.isEmpty){
    print("Não é possível adicionar uma nota vazia");
    adicionaNota(notas);
  }
  
  notas.add(nota!);
  
  return notas;
}

//funcao de listar notas
void listarNotas(List<String> notas){
  //percorre todas as notas
  for (var i = 0; i < notas.length; i++){
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();
  switch (comando){
    case "1":
    adicionaNota(notas);
    menu(notas);
    case "2":
    listarNotas(notas);
    menu(notas);
    case "3":
    print("Até breve!");
    break;
  }
}