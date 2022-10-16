// import 'dart:html';
// import 'dart:io';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:octashop/home.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>{

  var _ctrUser = TextEditingController();
  var _ctrPass = TextEditingController();
  var _ctx = null;

  void _showError(String message){
    ScaffoldMessenger.of(_ctx).showSnackBar(SnackBar(content: Text(message)));
  }

  void _validate(){
    if(_ctrUser.text == "" || _ctrPass.text == ""){
      _showError("Please fill Username and Password");
    }else if(_ctrUser.text.length <= 6){
      _showError("Username must be atleast 6 characters !");
    }else if(_ctrPass.text.length < 4 || _ctrPass.text.length > 16){
      _showError("Password must be 4 - 16 characters !");
    }else{
      Navigator.pushReplacement(_ctx, MaterialPageRoute(builder: (_ctx) => HomePage(
        username: _ctrUser.text,
      )));
    }
  }

  @override
  Widget build(BuildContext context){
    _ctx = context;
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: Image.asset("assets/images/octashop.png")
      //   ),
      //   title: Image.asset('assets/images/octashop.png', fit: BoxFit.cover , height: 40, width: 40),
      // ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child: Image.asset('assets/images/octashop.png', fit: BoxFit.cover , height: 150, width: 150),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 40.0),
            child: TextField(
              controller: _ctrUser,
              decoration: InputDecoration(hintText: "Username"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 40.0),
            child: TextField(
              controller: _ctrPass,
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 70.0 , horizontal: 10.0),
            child: SizedBox(
              width: 150.0,
              height: 40.0,
              child: ElevatedButton(onPressed: _validate, child: Text("Register")),
            )
            //ElevatedButton(onPressed: _validate, child: Text("Register"))
          )
        ],
      ),
    );
  }
}