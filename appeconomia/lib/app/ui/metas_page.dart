import 'package:appeconomia/app/controller/controller.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:appeconomia/app/ui/maindrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MetasPage extends StatelessWidget {
  final Controller controller = Get.find<Controller>();

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
    var size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]);
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 5, top: 10),
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        'assets/imagens/icon_moedas.png')),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Obx(() => Text(
                                        "${controller.user.value.saldo}",
                                        style: TextStyle(fontSize: 12.0),
                                      )),
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
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 10),
                          child: GestureDetector(
                            child: Image.asset(
                                'assets/imagens/icon_companhia.png'),
                            onTap: () {
                              print("teste");
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 10),
                          child: GestureDetector(
                            child: Image.asset(
                                'assets/imagens/icon_calendario.png'),
                            onTap: () {
                              print("teste");
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(20),
                              width: 300,
                              height: size.height * 0.7,
                              decoration: BoxDecoration(
                                  color: Colors.green[900],
                                  border: Border.all(
                                      color: Colors.brown[300], width: 10)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        child: Text(
                                          "Metas",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: GestureDetector(
                                child: Image.asset(
                                    'assets/imagens/icon_produto.png'),
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => Home(
                                  //             inventarioAtual: Inventario(
                                  //               inventarioCorrente: InProdutos(),
                                  //             ),
                                  //             telaHome: ProdutoView())));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: GestureDetector(
                                child: Image.asset(
                                    'assets/imagens/icon_propaganda.png'),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: GestureDetector(
                                child: Image.asset(
                                    'assets/imagens/icon_marketplace.png'),
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
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

class Double {}
