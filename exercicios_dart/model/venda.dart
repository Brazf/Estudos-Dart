import 'dart:html';

import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente? cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
    .map((item) => item.GetPreco * item.quantidade)
    .reduce((i, t) => i + t);
  }

}