import 'package:flutter/material.dart';
import 'package:ps_login_page/login.dart';
import 'package:ps_login_page/register.dart';
import 'package:ps_login_page/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'welcome': (context) => MyWelcome()
    },
  ));
}
