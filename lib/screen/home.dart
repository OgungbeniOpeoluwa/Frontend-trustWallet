import 'package:flutter/material.dart';

class MyHome extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.tealAccent,
  body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Center(child: Icon(Icons.account_balance_wallet,size: 50.5,)),
      FloatingActionButton(onPressed:(){},
      child: Text("Register"),),
      FloatingActionButton(onPressed:(){},
      child: Text("Login")), 
      FloatingActionButton(onPressed:(){},
      child: Text("Fund wallet",))

    ],),

);

}
}