import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/pages/changing_themes.dart';
import 'package:getx_testing/pages/comunicados.dart';
import 'package:getx_testing/pages/home.dart';
import 'package:getx_testing/pages/login.dart';
import 'package:getx_testing/themes/theme.dart';

void main() {
  runApp(GetMaterialApp(
    theme: senior,
    getPages: [
      GetPage(name: '/', page: () => Login()),
      GetPage(name: '/home', page: () => Home()),
      GetPage(name: '/themes', page: () => ChangingThemes()),
      GetPage(name: '/comunicados', page: () => Comunicados()),
    ],
    debugShowCheckedModeBanner: false,
  ));
}
