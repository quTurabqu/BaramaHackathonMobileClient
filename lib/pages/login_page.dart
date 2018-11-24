import 'package:flutter/material.dart';

import 'package:fintech/custom_components.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}


class _LoginPageState extends State<StatefulWidget> {

  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  @override
  void dispose() {

    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Giriş')),
      body: Container(
        decoration: CustomComponents.gradient(),
//        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 15.0),
          children: <Widget>[
            CustomComponents.textField('e-mail', false, true, emailFieldController),
            CustomComponents.textField('Password', true, false, passwordFieldController),

            CustomComponents.button('Giriş et', () {}),
          ],
        ),
      ),
    );
  }
}