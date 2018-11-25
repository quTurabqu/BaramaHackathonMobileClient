import 'package:flutter/material.dart';

import 'package:fintech/custom_components.dart';
import '../api_reguests/api_request.dart';
import 'budget_page.dart';
import '../util_files/dynamic_to_string.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 15.0),
          children: <Widget>[
            CustomComponents.textField(
                'e-mail', false, true, emailFieldController),
            CustomComponents.textField(
                'Password', true, false, passwordFieldController),
            CustomComponents.button('Giriş et', () {
              Future future = ApiRequest().getSessionResponse(
                  emailFieldController.text, passwordFieldController.text);
              future.then((data) {
                setState(() {
                  String key = dynamicToString(data);
                  if (key != 'ERROR' && key != 'Exception') {
                    Navigator.push(
                      context,
                      MaterialPageRoute<BudgetPage>(
                        builder: (context) => BudgetPage(key),
                      ),
                    );
                  } else {
                    setState(() {
                      emailFieldController.clear();
                      passwordFieldController.clear();
                    });
                  }
                });
              });
            }),
          ],
        ),
      ),
    );
  }
}
