import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trust_wallet/screen/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar(),
      body:Center(
        child: ImageIcon(
          AssetImage("assest/logo.png"),
          size: 60.5,
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}


AppBar appBar(){
  return AppBar(
    title: Text(
      'Welcome to Flutter'
    ),
    centerTitle: true,
    backgroundColor: Colors.deepPurple,
  );
}