import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/themes/theme.dart';

class ChangingThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              Get.changeTheme(master);
            },
            child: Text('Master Theme'),
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              Get.changeTheme(senior);
            },
            child: Text('Senior Theme'),
          ),
        ],
      ),
    );
  }
}
