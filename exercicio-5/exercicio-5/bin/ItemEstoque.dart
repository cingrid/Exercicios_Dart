// deverá armazenar informações sobre o nome do produto e a quantidade em estoque. 
class Itemestoque {
  String nomeProduto;
  int quantidadeEstoque;
  double preco;

Itemestoque(this.nomeProduto, this.quantidadeEstoque, this.preco);

void registraEntrada(int valor){
  quantidadeEstoque =  quantidadeEstoque + valor;
}

void registraSaida (int valor){
  if (quantidadeEstoque >= valor){
      quantidadeEstoque = quantidadeEstoque - valor;
  } else { 
    print("Quantidade insuficiente. Quantidade disponível no estoque: $quantidadeEstoque");
  }
}

void atualizaPreco(double precoNovo){
  preco = precoNovo;
}

}
