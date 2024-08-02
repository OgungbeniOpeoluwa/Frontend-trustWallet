import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            Icons.account_balance_wallet,
            size: 50.5,
          )),
          SizedBox(
            width: 20,
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: buttonStyle(),
            child: Text("Register"),
          ),
          SizedBox(
            width: 20,
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {}, style: buttonStyle(), child: Text("Login")),
          SizedBox(
            width: 20,
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: buttonStyle(),
            child: Text(
              "Fund wallet",
            ),
          )
        ],
      ),
    );
  }
}

ButtonStyle buttonStyle(double width, double height) {
  return ButtonStyle(fixedSize: WidgetStateProperty.all(Size(width, height)));
}

ElevatedButton button(String name, Colors colour, double height, double width) {
  return ElevatedButton(
      onPressed: () {}, style: buttonStyle(width, height), child: Text(name));
}
