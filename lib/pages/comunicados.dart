import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/controllers/comunicados_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Comunicados extends StatelessWidget {
  final ComunicadosController comunicadosController =
      Get.put(ComunicadosController());

  @override
  Widget build(BuildContext context) {
    var comunicados = comunicadosController.comunicados;
    return Scaffold(
      appBar: AppBar(
        title: Text('Comunicados'),
      ),
      body: Obx(
        () {
          return comunicadosController.isLoading.value
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator(
                        strokeWidth: 4,
                        valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).accentColor),
                      ),
                    ),
                  ),
                )
              : Container(
                  child: ListView.builder(
                    itemCount: comunicadosController.comunicados.length,
                    itemBuilder: (context, index) {
                      var comunicados = comunicadosController.comunicados;
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Theme.of(context).accentColor,
                        child: ListTile(
                            onTap: () {},
                            leading: RichText(
                              text: TextSpan(
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Theme.of(context).textSelectionColor,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: comunicados[index].dia + "  ",
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: comunicados[index].mes,
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .textSelectionColor,
                                            letterSpacing: 2)),
                                  ]),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                comunicados[index].titulo,
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Theme.of(context).textSelectionColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_right_alt_rounded,
                              color: Theme.of(context).textSelectionColor,
                              size: 30,
                            )),
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
