import 'package:flutter/material.dart';
import 'package:trust_wallet/features/button.dart';

class Register extends StatefulWidget {
  const Register({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;
  @override
  State<Register> createState() => _RegisterForm();
}

class _RegisterForm extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? get getErrorText {
    final text = _controller.value.text;

    if (text.isEmpty) {
      return "cant be empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: SafeArea(child: _buildUI(context, _controller, _formKey)),
    );
  }
}

Widget _buildUI(BuildContext context, TextEditingController controller,
    GlobalKey<FormState> formKey) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [_title(), _registerDetails(context, formKey, controller)],
  );
}

Widget _title() {
  return Text(
    "Trust wallet",
    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
  );
}

Widget _registerDetails(BuildContext context, GlobalKey<FormState> formKey,
    TextEditingController controller) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.90,
    height: MediaQuery.of(context).size.height * 0.90,
    child: Form(
        key: formKey,
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
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
