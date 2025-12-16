import 'dart:io';
void main(){

  
  listarTarefas(tarefas);
  listarIdsFuncionarios(idsFuncionarios);
  verificaProdutoNaLista(produtos);
  verificaItemDoCarrinho(produtosCarrinho, produtosVisitados);
  
  int codigo = 3;
  verificarDisponibilidade(codigosDisponiveis, codigo);
}

//A Dev Kanban está desenvolvendo um aplicativo de produtividade onde as pessoas usuárias podem verificar suas tarefas. 
//Este é apenas um exemplo, os valores que a lista possui podem variar. 
List<String> tarefas = ["Estudar", "Comprar mantimentos"]; 
void listarTarefas(List<String> tarefas){
  for (String tarefa in tarefas){
    print(tarefa);
  }
}


//Em um sistema administrativo, cada funcionário é representado por um ID (identificador único) em forma de inteiro.
//Crie uma função que receba a lista de IDs dos funcionários e exiba apenas os IDs que são pares.



List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9]; 
void listarIdsFuncionarios(List<int> idsFuncionarios){
  for (int idFuncionario in idsFuncionarios){
    if (idFuncionario % 2 == 0){
      print(idFuncionario);
    }
    
  }
}


/*
Uma empresa está gerenciando o inventário de seus produtos e precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. 
Para isso, você deve criar uma função que, dado uma lista de produtos, conte quantas vezes o item "maçã" aparece na lista de produtos.
 */
List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"]; 


 void verificaProdutoNaLista(List<String> produtos ){
  int contador = 0;
  for (String produto in produtos){
    if (produto == "banana"){
      contador++;
    }
  }
  print("O produto 'banana' ja está na lista $contador vezes");

 }

/*
 João trabalha em uma plataforma de e-commerce e está implementando uma funcionalidade de recomendação de produtos. 
 Ele possui uma lista de produtos que a pessoa usuária visitou e quer verificar se algum item visitado já foi adicionado ao carrinho.
*/
List<String> produtosCarrinho = ["arroz", "feijão", "macarrão", "leite"]; 

List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

void verificaItemDoCarrinho(List<String> carrinho, List<String> visitados){
for (String produto in visitados){
  if (!carrinho.contains(produto)){
    print("O produto $produto não está no carrinho");
  }
}

}


//Em um sistema de reservas, é necessário verificar se um determinado item está disponível em um conjunto de itens disponíveis.
 Set<int> codigosDisponiveis = {1, 2, 3, 4, 5}; 
bool verificarDisponibilidade(Set<int> disponiveis, int codigo){
  return disponiveis.contains(codigo);
}