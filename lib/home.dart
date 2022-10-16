// import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:octashop/login.dart';
import 'package:octashop/voucher.dart';
import 'package:octashop/news.dart';

class HomePage extends StatefulWidget{
  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  var _ctx = null;

  void _logout(){
    Navigator.pushReplacement(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));
  }

  void _voucher(){
    //print(ModalRoute.of(context)!.settings.name);
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => VoucherPage()));
  }

  void _news(){
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => NewsPage()));
  }

  @override
  Widget build(BuildContext context){
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/octashop.png', fit: BoxFit.cover , height: 32, width: 32),
        title: Text("Greetings , " + widget.username + "!"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
            child: CarouselSlider(
              items: [
                Image(image: AssetImage('assets/images/ml.jpg')),
                Image(image: AssetImage('assets/images/ff.jpg')),
                Image(image: AssetImage('assets/images/val.jpg')),
                Image(image: AssetImage('assets/images/rag.png')),
                Image(image: AssetImage('assets/images/imp.jpg')),
              ],
              options: CarouselOptions(
                height: 200,
                aspectRatio: 1/1,
                initialPage: 1,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
              ),          
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
            child: Text("Octashop , the best place to recharge!",
              textAlign: TextAlign.center, 
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(onPressed: () {}, child: Text("Home")),
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
                onPressed: _news, 
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
      )
    );
  }
}