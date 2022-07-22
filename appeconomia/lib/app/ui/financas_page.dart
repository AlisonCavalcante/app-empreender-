import 'package:appeconomia/app/controller/controller.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'maindrawer.dart';

class FinancasPage extends StatelessWidget {
  final Controller controller = Get.find<Controller>();

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
                  controller.openPopup(context);
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
                              // decoration: BoxDecoration(
                              //     color: Colors.grey,
                              //     border: Border.all(
                              //       color: Color.fromARGB(255, 0, 0, 0),
                              //       width: 2,
                              //     ),
                              // boxShadow: [
                              //   BoxShadow(
                              //       color: Colors.grey,
                              //       blurRadius: 4.0,
                              //       spreadRadius: 2.0)
                              // ],
                              //     borderRadius: BorderRadius.all(Radius.circular(5.0))),
                              // margin: EdgeInsets.only(top: 15, left: 5, right: 5),
                              child: Row(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(right: 5, top: 10),
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          'assets/imagens/icon_moedas.png')),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "${controller.user.value.saldo}",
                                      style: TextStyle(fontSize: 12.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.zero)),
                              margin:
                                  EdgeInsets.only(top: 5, left: 5, right: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Lucro Líquido",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          'assets/imagens/icon_dinheiro.png')),
                                ],
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
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  border: Border.all(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.zero)),
                              margin:
                                  EdgeInsets.only(top: 5, left: 5, right: 5),
                              child: Text(
                                "Despesas Variáveis",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: DefaultTabController(
                    initialIndex: 1,
                    length: 4,
                    child: Scaffold(
                      appBar: PreferredSize(
                        child: AppBar(
                          backgroundColor: Colors.grey[300],
                          elevation: 0.0,
                          bottom: TabBar(
                              isScrollable: true,
                              labelColor: Colors.black,
                              indicatorColor: Colors.black,
                              tabs: <Widget>[
                                Tab(
                                  text: "Lucro líquido",
                                ),
                                Tab(
                                  text: "Despesas",
                                ),
                                Tab(
                                  text: "Relatório de Vendas",
                                ),
                                Tab(
                                  text: "Fluxo de Caixa",
                                ),
                              ]),
                        ),
                        preferredSize: Size.fromHeight(50.0),
                      ),
                    )))
          ],
        ),
        drawer: Drawer(child: MainDrawer()));
  }
}
