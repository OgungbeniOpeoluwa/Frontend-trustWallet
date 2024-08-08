import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trust_wallet/features/button.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() {
    return _RegisterForm();
  }
}

class _RegisterForm extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: SafeArea(child: _buildUI(context)),
    );
  }
}

Widget _buildUI(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [_title(), _registerDetails(context)],
  );
}

Widget _title() {
  return Text(
    "Trust wallet",
    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
  );
}

Widget _registerDetails(BuildContext context) {
  return SizedBox(
    // width: MediaQuery.sizeOf(context).width * 0.90,
    // height: MediaQuery.sizeOf(context).height * 0.90,
    child: Form(
        key: _formkey,
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "First Name"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Last Name"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Email"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Phone Number"),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            button(ButtonProperty(Colors.black, 50, "submit", 300))
          ],
        )),
  );
}
