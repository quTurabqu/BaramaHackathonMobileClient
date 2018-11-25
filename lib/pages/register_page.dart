import 'package:flutter/material.dart';

import 'package:fintech/custom_components.dart';


class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage>{

  final nameFieldController = TextEditingController();
  final surnameFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final emailFieldController = TextEditingController();

  @override
  void dispose() {

    nameFieldController.dispose();
    surnameFieldController.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qeydiyyat')),
      body: Container(
        decoration: CustomComponents.gradient(),
//        margin: EdgeInsets.symmetric(vertical: 35.0),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 15.0),
          children: <Widget>[
            CustomComponents.textField('Ad', false, false, nameFieldController),
            CustomComponents.textField('Soyad', false, false, surnameFieldController),
            CustomComponents.textField('e-mail', false, true, emailFieldController),
            CustomComponents.textField('Password', true, false, passwordFieldController),

            CustomComponents.button('Qeydiyyatdan keç', () {
              setState(() {

              });
            }),
          ],
        ),
      ),
    );
  }
}
