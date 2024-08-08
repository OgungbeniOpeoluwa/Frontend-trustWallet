import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trust_wallet/screen/register.dart';
import 'package:trust_wallet/features/button.dart';

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
          button(ButtonProperty(Colors.black, 50, "Register", 300)),
          SizedBox(
            width: 20,
            height: 30,
          ),
          button(ButtonProperty(Colors.black, 50, "Login", 300)),
          SizedBox(
            width: 20,
            height: 30,
          ),
          button(ButtonProperty(Colors.black, 50, "fund wallet", 300))
        ],
      ),
    );
  }
}
