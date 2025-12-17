
import 'teste.dart';
import 'ItemEstoque.dart';
void main(){
Teste teste1 = Teste("Ingrid", "Munhoz", 28);
print('${teste1.nome} ${teste1.sobrenome} ${teste1.idade}');

List<Itemestoque> itens = <Itemestoque>[];


Itemestoque smartphone = Itemestoque('Smartphone', 100, 3400.40);
print('Produto: ${smartphone.nomeProduto}. Quantidade em estoque: ${smartphone.quantidadeEstoque}');

Itemestoque notebook = Itemestoque('Notebook', 50, 2500.50);
print('Produto: ${notebook.nomeProduto}. Quantidade em estoque: ${notebook.quantidadeEstoque}');


smartphone.registraEntrada(10);
notebook.registraSaida(48);

print('Produto: ${smartphone.nomeProduto}. Quantidade em estoque: ${smartphone.quantidadeEstoque}. Preço: ${smartphone.preco}');
print('Produto: ${notebook.nomeProduto}. Quantidade em estoque: ${notebook.quantidadeEstoque}. Preço: ${notebook.preco}');

for (Itemestoque item in itens){
  print('Produtos no estoque: ${item.nomeProduto}. Quantidade em estoque: ${item.quantidadeEstoque}');
}

notebook.atualizaPreco(3450.43);
print('Preço novo do notebook: ${notebook.preco}');
}