import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/controllers/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ola ${loginController.name.value.text}',
                style: GoogleFonts.inter(
                  fontSize: 26,
                  color: Theme.of(context).textSelectionColor,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text('Em breve funcionalidades aq kk'),
            SizedBox(height: 15),
            Container(
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: () {
                  Get.toNamed('/themes');
                },
                child: Text(
                  'Vá mudar os temas',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: () {
                  Get.toNamed('/comunicados');
                },
                child: Text(
                  'Vá ver os comunicados do condosócio',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
