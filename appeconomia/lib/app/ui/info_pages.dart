import 'package:appeconomia/app/controller/controller.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InfoPages extends StatelessWidget {
  final Controller controller = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (num) {
                controller.changePageInfo(num);
              },
              children: [
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 200,
                                  // child: GestureDetector(
                                  //   child: Image.asset(
                                  //       'assets/imagens/icon_produto.png'),
                                  //   onTap: () {},
                                  // ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Produto",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Você aprenderá a ser empreendedor administrando a saúde financeira da sua empresa. Como fonte de receita terá que vender produtos. Os produtos podem ter várias características que serão livres para serem definidas por você. Cada característica implica em um desempenho diferente de vendas. Esse desempenho influenciará se as metas do jogo serão atingidas. Provando assim se você se tornou ou não um bom empreendedor.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                controller.infoPular();
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 150,
                                  // child: GestureDetector(
                                  //   child: Image.asset(
                                  //       'assets/imagens/icon_info_propaganda.png'),
                                  //   onTap: () {},
                                  // ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text(
                                                  "Canais de Propaganda",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Para que seus produtos alcancem os clientes, será necessário utilizar um canal para que seja feita a propaganda dos produtos. Cada canal terá resultados diferentes em cada tipo de produto criado.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(5),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                controller.infoPular();
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 200,
                                  // child: GestureDetector(
                                  //   child: Image.asset(
                                  //       'assets/imagens/icon_empreendedor.png'),
                                  //   onTap: () {},
                                  // ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Marketplace",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                " Com o intuito de potencializar as vendas, você poderá utilizar anúncios em Marketplaces diferentes. No qual, terá resultados diferentes em produtos diferentes.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                controller.infoPular();
                                              },
                                              child: Text(
                                                "Pular",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[350],
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: size.width * 0.30,
                                  height: 150,
                                  // child: GestureDetector(
                                  //   child: Image.asset(
                                  //       'assets/imagens/icon_info_financas.png'),
                                  //   onTap: () {},
                                  // ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.amber,
                                  width: size.width * 0.50,
                                  height: size.height * 0.70,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Card(
                                    color: Colors.white54,
                                    elevation: 50.0,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(40),
                                              child: Text("Finanças",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              margin: EdgeInsets.all(10),
                                              child: Text(
                                                "Você aprenderá a ser empreendedor administrando a saúde financeira da sua empresa. Como fonte de receita terá que vender produtos. Os produtos podem ter várias características que serão livres para serem definidas por você. Cada característica implica em um desempenho diferente de vendas. Esse desempenho influenciará se as metas do jogo serão atingidas. Provando assim se você se tornou ou não um bom empreendedor.",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: FlatButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)),
                                              color: Colors.grey[400],
                                              onPressed: () {
                                                controller.infoPular();
                                              },
                                              child: Text(
                                                "Iniciar",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(() => Container(
                color: Colors.grey[700],
                height: size.height * 0.10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: controller.indexPInfo.value == 0
                              ? Colors.red
                              : Colors.grey),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: controller.indexPInfo.value == 1
                              ? Colors.red
                              : Colors.grey),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: controller.indexPInfo.value == 2
                              ? Colors.red
                              : Colors.grey),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: controller.indexPInfo.value == 3
                              ? Colors.red
                              : Colors.grey),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
