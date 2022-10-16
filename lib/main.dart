import 'package:flutter/material.dart';
import 'package:octashop/login.dart';
// import 'package:octashop/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}