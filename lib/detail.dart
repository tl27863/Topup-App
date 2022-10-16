// import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:octashop/voucher.dart';
// import 'package:octashop/home.dart';

class DetailPage extends StatefulWidget{
  final product;

  DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return DetailPageState();
  }
}

class DetailPageState extends State<DetailPage>{

  int _checkgm(){
    if(widget.product[1].toString() == "ml"){
      _pGm = 0;
    }else if(widget.product[1].toString() == "ff"){
      _pGm = 1;
    }else if(widget.product[1].toString() == "val"){
      _pGm = 2;
    }else if(widget.product[1].toString() == "rag"){
      _pGm = 3;
    }else{
      _pGm = 4;
    }
    return _pGm;
  }

  void _checkUID(){
    if(_ctrUID.text == ""){
      showAlertDialogFail(context);
    }else if(double.tryParse(_ctrUID.text) == null){
      showAlertDialogFails(context);
    }else{
      showAlertDialogSuccess(context);
    }
  }

  // var _pTxt = null;
  // _pTxt = widget.product[0];
  var _pGm = 0;
  var _ctrUID = TextEditingController();
  var _ctx = null;
  
  @override
  Widget build(BuildContext context){
    _ctx = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Voucher"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            child: AbsorbPointer(
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
                  initialPage: _checkgm(),
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                ),          
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: Text("Product :", 
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(widget.product[0].toString(), 
              style: TextStyle(
                  //fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            child: TextField(
              controller: _ctrUID,
              decoration: InputDecoration(hintText: "Player ID"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: SizedBox(
              width: 200.0,
              height: 40.0,
              child: ElevatedButton(onPressed: _checkUID, child: Text("Purchase")),
            ),
          )
        ],
      )
    );
  }
}

showAlertDialogFail(BuildContext context) {

  Widget closeButton = TextButton(
    child: Text("CLOSE"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Player UID must be filled!"),
    actions: [
      closeButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogFails(BuildContext context) {

  Widget closeButton = TextButton(
    child: Text("CLOSE"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Player UID must be numeric!"),
    actions: [
      closeButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialogSuccess(BuildContext context) {

  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Purchase Successful"),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}