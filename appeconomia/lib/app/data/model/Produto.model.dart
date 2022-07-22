import 'package:appeconomia/app/data/model/Categoria.dart';

class Produto {
  String nome;
  double preco;
  int quantidade;
  Categoria categoria;

  Produto({this.nome, this.preco, this.quantidade, this.categoria});
}
