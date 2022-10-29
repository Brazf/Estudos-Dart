import '../model/cliente.dart';
import '../model/produto.dart';
import '../model/venda.dart';
import '../model/venda_item.dart';

main (){
  /*
  Cliente cliente1 = new Cliente(nome: "Fábio", cpf: "12345");
  Produto produto1 = new Produto(codigo: 001, desconto: 0.25, nome: "Detergente",preco: 1.00);
  Produto produto2 = new Produto(codigo: 002, desconto: 0.10, nome: "Sabão em Pó",preco: 4.00);
  Produto produto3 = new Produto(codigo: 003, desconto: 0.10, nome: "Água sanitária",preco: 2.50);
  VendaItem venda1 = new VendaItem(produto: produto1, quantidade: 2);
  VendaItem venda2 = new VendaItem(produto: produto2, quantidade: 1);
  VendaItem venda3 = new VendaItem(produto: produto3, quantidade: 3);
  Venda compras = new Venda(cliente: cliente1, itens: [venda1, venda2, venda3]);
  */
  
  Venda venda = new Venda(
    cliente: Cliente(
      cpf: "123",
      nome: "Fábio Braz"
    ),
    itens: 
    [
    VendaItem(
      produto: Produto(codigo: 001, desconto: 0.25, nome: "Detergente",preco: 1.00), quantidade: 2),
    VendaItem(
      produto: Produto(codigo: 002, desconto: 0.10, nome: "Sabão em Pó",preco: 4.00), quantidade: 1),
    VendaItem(
      produto: Produto(codigo: 003, desconto: 0.10, nome: "Água sanitária",preco: 2.50), quantidade: 3 )
    ] 
  );

  print("Valor total da venda: ${venda.valorTotal}");
  print("Nome do primeiro produto: ${venda.itens[0].produto!.nome}");
  print("Nome do cliente: ${venda.cliente!.nome}");
}