import 'package:create_account/login_screen.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationBarWidget.dart';
import 'create_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: LoginScreen(),
    );
  }
}

