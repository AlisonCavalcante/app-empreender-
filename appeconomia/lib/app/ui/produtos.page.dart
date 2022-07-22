import 'package:appeconomia/app/controller/controller.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:appeconomia/app/ui/maindrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProdutoPage extends StatelessWidget {
  final Controller controller = Get.find<Controller>();
  final _formKey = GlobalKey<FormState>();

  final List<String> _listitem = [
    'assets/imagens/icon_alimentacao.png',
    'assets/imagens/icon_informatica.png',
    'assets/imagens/icon_livros.png',
    'assets/imagens/icon_fone_ouvidos.png',
    'assets/imagens/icon_outros.png',
  ];

  final List<String> _listNomesCategorias = [
    'Alimentação',
    'Informática',
    'Livros',
    'Eletrônicos',
    'Outros',
  ];
  _openPopup(context) {
    Alert(
        context: context,
        title: "Usuário:",
        content: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: Text(controller.user.value.nome)),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              iconSize: 40,
              icon: Icon(Icons.keyboard_return_outlined),
              onPressed: () {
                Get.toNamed(Routes.LOGIN);
              }),
          IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                _openPopup(context);
              }),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    border: Border(
                        top: BorderSide.none,
                        right: BorderSide(color: Colors.grey))),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/imagens/icon_moedas.png')),
                                Text(
                                  "${controller.user.value.saldo}",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/imagens/icon_estoque.png')),
                                Text(
                                  "Estoque",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Nome:",
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              "Quantidade: ",
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              "Valor: ",
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Categoria:",
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.grey[300],
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 150,
                              height: 100,
                              child: GestureDetector(
                                child: Image.asset(
                                    "assets/imagens/icon_produto.png"),
                                onTap: () {},
                              ),
                            ),
                            Container(
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  color: Colors.green,
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      controller.criarProduto();
                                    }
                                  },
                                  child: Text(
                                    "Produzir",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 200,
                              height: 30,
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "O campo é obrigatório";
                                  }
                                  return null;
                                },
                                controller: controller.nomeProdutoController,
                                decoration: InputDecoration(
                                  labelText: "Nome",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 30,
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "O campo é obrigatório";
                                  }
                                  return null;
                                },
                                controller: controller.precoProdutoController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixText: "R\$",
                                  labelText: "Preço",
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 30,
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "O campo é obrigatório";
                                  }
                                  return null;
                                },
                                controller: controller.qtdcontroller,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                      RegExp(r'[, .]')),
                                ],
                                decoration: InputDecoration(
                                  labelText: "Quantidade",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  color: Colors.grey[400],
                                  onPressed: () {
                                    controller.changeQtd(1);
                                    controller.changeTextQuantidade();
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  color: Colors.grey[400],
                                  onPressed: () {
                                    controller.changeQtd(-1);
                                    controller.changeTextQuantidade();
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Categoria:",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5),
                                height: 150,
                                child: GridView.builder(
                                    itemCount: 5,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                    ),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          controller.openPopupCategoria(
                                              context, index);
                                          controller.changeSelection(index);
                                        },
                                        child: Obx(() => Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: index ==
                                                              controller
                                                                  .indiceCategoria
                                                                  .value
                                                          ? Colors.black
                                                          : Colors.transparent,
                                                      width: 2),
                                                  shape: BoxShape.rectangle,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Card(
                                                elevation: 10.0,
                                                color: Colors.grey[400],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 70,
                                                          height: 50,
                                                          child: Image.asset(
                                                              _listitem[index]),
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5,
                                                                  top: 1),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                              _listNomesCategorias[
                                                                  index]),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
    );
  }
}
