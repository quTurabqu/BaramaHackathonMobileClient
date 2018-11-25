import 'package:flutter/material.dart';

import 'register_page.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Daxil ol'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<LoginPage>(
                      builder: (context) => LoginPage(),
                    ));
              },
            ),
            FlatButton(
              child: Text('Qeydiyyatdan keç'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<RegisterPage>(
                      builder: (context) => RegisterPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
