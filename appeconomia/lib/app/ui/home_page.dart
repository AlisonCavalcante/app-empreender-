import 'package:appeconomia/app/controller/controller.dart';
import 'package:appeconomia/app/routes/app_routes.dart';
import 'package:appeconomia/app/ui/maindrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatelessWidget {
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
    SystemChrome.setEnabledSystemUIOverlays([]);
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
          children: <Widget>[],
        ),
        drawer: Drawer(child: MainDrawer()));
  }
}
