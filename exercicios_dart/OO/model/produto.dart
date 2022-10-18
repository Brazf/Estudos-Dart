class Produto {
  int? codigo;
  String? nome;
  double? desconto;
  double? preco;

  Produto ({this.codigo, this.nome, this.preco, this.desconto});

  double get precoComDesconto {
    return (1 - desconto!) * preco!;
  }  
}