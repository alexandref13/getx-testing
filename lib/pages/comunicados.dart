import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/controllers/comunicados_controller.dart';

class Comunicados extends StatelessWidget {
  final ComunicadosController comunicadosController =
      Get.put(ComunicadosController());

  @override
  Widget build(BuildContext context) {
    var comunicados = comunicadosController.comunicados;
    var isLoading = comunicadosController.isLoading.value;
    return Scaffold(
      appBar: AppBar(
        title: Text('Comunicados'),
      ),
      body: Obx(
        () {
          return isLoading
              ? CircularProgressIndicator()
              : Container(
                  child: ListView.builder(
                    itemCount: comunicadosController.comunicados.length,
                    itemBuilder: (context, i) {
                      return Text(comunicados[i].titulo);
                    },
                  ),
                );
        },
      ),
    );
  }
}
