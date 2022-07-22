import 'package:appeconomia/app/data/model/Categoria.dart';
import 'package:appeconomia/app/data/model/Produto.model.dart';
import 'package:appeconomia/app/data/model/Usuario.model.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:appeconomia/app/ui/metas_page.dart';
import 'package:appeconomia/app/ui/produtos.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Controller extends GetxController {
  final TextEditingController nickeditingController = TextEditingController();

  final TextEditingController qtdcontroller = TextEditingController();
  final TextEditingController nomeProdutoController = TextEditingController();
  final TextEditingController precoProdutoController = TextEditingController();

  final user = Usuario().obs;
  final listProdutos = List<Produto>().obs;

  RxInt indexPInfo = 0.obs;
  RxInt qtdProdutos = 0.obs;
  RxInt indiceCategoria = 0.obs;
  RxString categoria = "".obs;
  RxDouble saldo = 1000.00.obs;

  void login() {
    user.value.nome = nickeditingController.text;
    user.value.saldo = 1500.00;
    print(user.value.nome);
    print(user.value.saldo);

    Get.toNamed(Routes.INFOPAGES, arguments: user);
  }

  void infoPular() {
    Get.toNamed(Routes.HOME, arguments: user);
    print(user.value.nome);
  }

  void changePageInfo(int num) {
    indexPInfo.value = num;
  }

  void changeQtd(int delta) {
    int valor = int.parse(qtdcontroller.text);
    if (qtdProdutos.value == 0 && delta == -1) {
      print("negativo");
    } else if (qtdcontroller.text.isEmpty) {
      qtdProdutos += delta;
    } else
      qtdProdutos.value = valor + delta;
  }

  void changeTextQuantidade() {
    qtdcontroller.text = qtdProdutos.value.toString();
  }

  void changeSelection(int index) {
    indiceCategoria.value = index;
    switch (index) {
      case 0:
        categoria.value = "Alimentação";
        print(categoria);
        break;
      case 1:
        categoria.value = "Informática";
        print(categoria);
        break;
      case 2:
        categoria.value = "Livros";
        print(categoria);
        break;
      case 3:
        categoria.value = "Eletrônicos";
        print(categoria);
        break;
      case 4:
        categoria.value = "Outros";
        print(categoria);
        break;
      default:
    }
  }

  openPopupCategoria(context, int index) {
    if (index == 4) {
      Alert(
          context: context,
          title: "Nova Categoria",
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Cadastrar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ]).show();
    }
  }

  void criarProduto() {
    listProdutos.add(Produto(
        nome: nomeProdutoController.value.text,
        preco: double.parse(precoProdutoController.value.text),
        quantidade: int.parse(qtdcontroller.value.text),
        categoria: Categoria(nome: categoria.value)));
  }

  void navagationDrawer(int index) {
    switch (index) {
      case 1:
        Get.toNamed(Routes.METASPAGE, arguments: user);
        break;
      case 2:
        Get.toNamed(Routes.PRODUTOPAGE, arguments: user);
        break;
      case 3:
        Get.toNamed(Routes.PROPRAGANDAPAGE, arguments: user);
        break;

      case 4:
        Get.toNamed(Routes.FINANCASPAGE, arguments: user);
        break;

      case 5:
        Get.toNamed(Routes.MARKETPLACEPAGE, arguments: user);
        break;

      case 6:
        break;

      case 7:
        break;
      default:
    }
  }

  void openPopup(context) {
    Alert(
        context: context,
        title: "Usuário:",
        content: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.all(20), child: Text(user.value.nome)),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}
