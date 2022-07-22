import 'package:appeconomia/app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InventarioAtual extends StatelessWidget {
  final Controller controller = Get.find<Controller>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.grey[400],
              border: Border(
                  top: BorderSide.none, right: BorderSide(color: Colors.grey))),
        ),
      ),
    );
  }
}
