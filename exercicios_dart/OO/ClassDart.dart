class Data {
  int? dia;
  int? mes;
  int? ano;

  Data(this.dia, this.mes, this.ano);

  Data.ano1(this.ano) {
    this.dia = 1;
    this.mes = 8;
  }

  Data.ano2([this.dia = 1, this.mes = 1, this.ano = 1990]);

  Data.ano3({this.dia = 1, this.mes = 2, this.ano = 1990});

  String ImprimirData() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    /*return "${this.dia}/${this.mes}/${this.ano}";*/
    return "${this.dia}/${this.mes}/${this.ano}";
  }
}

main() {
  Data data = new Data(15, 08, 1997);
  Data data3 = new Data.ano3(ano: 2016);
  print(data);
  print(data3);
  print(new Data.ano2(10));
  print(new Data.ano2(10, 01));
  print(new Data.ano2(10, 01, 1901));
}
