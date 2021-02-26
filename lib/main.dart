import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_testing/pages/home.dart';
import 'package:getx_testing/pages/login.dart';
import 'package:getx_testing/themes/theme.dart';

void main() {
  runApp(GetMaterialApp(
    theme: master,
    getPages: [
      GetPage(name: '/', page: () => Login()),
      GetPage(name: '/home', page: () => Home()),
    ],
    debugShowCheckedModeBanner: false,
  ));
}
