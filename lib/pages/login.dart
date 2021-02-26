import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/controllers/login_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  final LoginController c = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'EMPRESA',
                style: GoogleFonts.inter(
                    fontSize: 25, color: Theme.of(context).textSelectionColor),
              ),
            ),
            TextFormField(
              controller: c.email.value,
              style: GoogleFonts.poppins(
                color: Theme.of(context).textSelectionColor,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).textSelectionColor, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).textSelectionColor)),
                labelText: 'Entre com seu e-mail',
                prefixIcon: Icon(Icons.mail_outline,
                    color: Theme.of(context).textSelectionColor),
                labelStyle: GoogleFonts.poppins(
                    color: Theme.of(context).textSelectionColor, fontSize: 16),
                errorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                focusedErrorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                errorStyle:
                    GoogleFonts.poppins(color: Theme.of(context).accentColor),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: c.password.value,
              style: GoogleFonts.poppins(
                color: Theme.of(context).textSelectionColor,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).textSelectionColor, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).textSelectionColor)),
                labelText: 'Entre com sua senha',
                prefixIcon: Icon(Icons.mail_outline,
                    color: Theme.of(context).textSelectionColor),
                labelStyle: GoogleFonts.poppins(
                    color: Theme.of(context).textSelectionColor, fontSize: 16),
                errorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                focusedErrorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                errorStyle:
                    GoogleFonts.poppins(color: Theme.of(context).accentColor),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: c.name.value,
              style: GoogleFonts.poppins(
                color: Theme.of(context).textSelectionColor,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).textSelectionColor, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                        color: Theme.of(context).textSelectionColor)),
                labelText: 'Entre com seu nome',
                prefixIcon: Icon(Icons.mail_outline,
                    color: Theme.of(context).textSelectionColor),
                labelStyle: GoogleFonts.poppins(
                    color: Theme.of(context).textSelectionColor, fontSize: 16),
                errorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                focusedErrorBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Theme.of(context).accentColor)),
                errorStyle:
                    GoogleFonts.poppins(color: Theme.of(context).accentColor),
              ),
              keyboardType: TextInputType.name,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: Text('Clique'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
