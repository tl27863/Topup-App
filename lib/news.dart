// import 'dart:html';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:octashop/detail.dart';
import 'package:octashop/login.dart';
import 'package:octashop/voucher.dart';
// import 'package:octashop/home.dart';

class NewsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return NewsPageState();
  }
}

class NewsPageState extends State<NewsPage>{
  var _ctx = null;

  void _home(){
    Navigator.pop(_ctx);
  }

  void _logout(){
    Navigator.pushReplacement(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));
  }

  void _voucher(){
    Navigator.pop(_ctx);
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => VoucherPage()));
  }

  // void _news(){
  //   //Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => NewsPage()));
  // }

  @override
  Widget build(BuildContext context){
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/octashop.png', fit: BoxFit.cover , height: 32, width: 32),
        title: Text("News & Promotion")
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/ml.jpg'),
              title: Text("Diamond Sale"),
              subtitle: Text("6-6-2022 to 6-12-2022"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/rag.png'),
              title: Text("Crystal Sale"),
              subtitle: Text("4-2-2022 to 4-5-2022"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/val.jpg'),
              title: Text("RP Sale"),
              subtitle: Text("3-3-2022 to 3-4-2022"),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(onPressed: _home, child: Text("Home")),
            )
          ),      
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: _voucher, 
                child: Text("Voucher")),
            )
          ), 
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("News & Promotion")),
            )
          ), 
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: _logout,
                child: Text("Log Out")),
            )
          ), 
        ],
      ),
    );
  }
}