// import 'dart:html';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:octashop/detail.dart';
import 'package:octashop/login.dart';
// import 'package:octashop/voucher.dart';
import 'package:octashop/news.dart';

class VoucherPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return VoucherPageState();
  }
}

class VoucherPageState extends State<VoucherPage> with TickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  void _checkml(){
    var _mld = [_mlValue,"ml"];
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => DetailPage(
      product: _mld,
    )));
  }

  void _checkff(){
    var _ffd = [_ffValue,"ff"];
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => DetailPage(
      product: _ffd,
    )));
  }

  void _checkval(){
    var _vald = [_valValue,"val"];
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => DetailPage(
      product: _vald,
    )));
  }

  void _checkrag(){
    var _ragd = [_ragValue,"rag"];
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => DetailPage(
      product: _ragd,
    )));
  }

  void _checkimp(){
    var _impd = [_impValue,"imp"];
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => DetailPage(
      product: _impd,
    )));
  }

  void _home(){
    Navigator.pop(_ctx);
  }

  void _logout(){
    Navigator.pushReplacement(_ctx, MaterialPageRoute(builder: (_ctx) => LoginPage()));
  }

  void _news(){
    Navigator.pop(_ctx);
    Navigator.push(_ctx, MaterialPageRoute(builder: (_ctx) => NewsPage()));
  }

  var _ctx = null;
  var _ml = [
    "100 Diamond - Rp. 10.000",
    "300 Diamond - Rp. 28.000",
    "500 Diamond - Rp. 45.000",
    "1000 Diamond - Rp. 80.000",
    "2500 Diamond - Rp. 150.000"];
  var _mlValue = "100 Diamond - Rp. 10.000";
  var _ff = [
    "100 Diamond - Rp. 10.000",
    "300 Diamond - Rp. 28.000",
    "500 Diamond - Rp. 45.000",
    "1000 Diamond - Rp. 80.000",
    "2500 Diamond - Rp. 150.000"];
  var _ffValue = "100 Diamond - Rp. 10.000";
  var _val = [
    "100 RP - Rp. 10.000",
    "300 RP - Rp. 28.000",
    "500 RP - Rp. 45.000",
    "1000 RP - Rp. 80.000",
    "2500 RP - Rp. 150.000"];
  var _valValue = "100 RP - Rp. 10.000";
  var _rag = [
    "100 Crystal - Rp. 10.000",
    "300 Crystal - Rp. 28.000",
    "500 Crystal - Rp. 45.000",
    "1000 Crystal - Rp. 80.000",
    "2500 Crystal - Rp. 150.000"];
  var _ragValue = "100 Crystal - Rp. 10.000";
  var _imp = [
    "100 Primogems - Rp. 10.000",
    "300 Primogems - Rp. 28.000",
    "500 Primogems - Rp. 45.000",
    "1000 Primogems - Rp. 80.000",
    "2500 Primogems - Rp. 150.000"];
  var _impValue = "100 Primogems - Rp. 10.000";

  @override
  Widget build(BuildContext context){
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/octashop.png', fit: BoxFit.cover , height: 32, width: 32),
        title: Text("Voucher"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Image.asset('assets/images/ml.jpg', fit: BoxFit.cover , height: 40, width: 40),
              //text: 'Mobile Legends',
            ),
            Tab(
              icon: Image.asset('assets/images/ff.jpg', fit: BoxFit.cover , height: 40, width: 40),
              //text: 'Free Fire',
            ),
            Tab(
              icon: Image.asset('assets/images/val.jpg', fit: BoxFit.cover , height: 40, width: 40),
              //text: 'Valorant',
            ),
            Tab(
              icon: Image.asset('assets/images/rag.png', fit: BoxFit.cover , height: 40, width: 40),
              //text: 'Ragnarok X',
            ),
            Tab(
              icon: Image.asset('assets/images/imp.jpg', fit: BoxFit.cover , height: 40, width: 40),
              //text: 'Genshin Impact',
            ),
          ],
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text("Mobile Legends", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      value: _mlValue,
                      onChanged: (String? value){
                        setState(() {
                          _mlValue = value!;
                        });
                      },
                      items: _ml.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 40.0,
                      child: ElevatedButton(onPressed: _checkml, child: Text("Buy")),
                    )
                  ),             
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text("Free Fire", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      value: _ffValue,
                      onChanged: (String? value){
                        setState(() {
                          _ffValue = value!;
                        });
                      },
                      items: _ff.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 40.0,
                      child: ElevatedButton(onPressed: _checkff, child: Text("Buy")),
                    )
                  ), 
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text("Valorant", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      value: _valValue,
                      onChanged: (String? value){
                        setState(() {
                          _valValue = value!;
                        });
                      },
                      items: _val.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 40.0,
                      child: ElevatedButton(onPressed: _checkval, child: Text("Buy")),
                    )
                  ), 
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text("Ragnarok X", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      value: _ragValue,
                      onChanged: (String? value){
                        setState(() {
                          _ragValue = value!;
                        });
                      },
                      items: _rag.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 40.0,
                      child: ElevatedButton(onPressed: _checkrag, child: Text("Buy")),
                    )
                  ), 
                ],
              )
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text("Genshin Impact", 
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      value: _impValue,
                      onChanged: (String? value){
                        setState(() {
                          _impValue = value!;
                        });
                      },
                      items: _imp.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0 , horizontal: 10.0),
                    child: SizedBox(
                      width: 200.0,
                      height: 40.0,
                      child: ElevatedButton(onPressed: _checkimp, child: Text("Buy")),
                    )
                  ), 
                ],
              )
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10.0),
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
                    onPressed: () {}, 
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
        )
      ]
    );
  }
}