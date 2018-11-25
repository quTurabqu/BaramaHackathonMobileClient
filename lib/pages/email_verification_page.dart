import 'package:flutter/material.dart';


import 'package:fintech/custom_components.dart';
import 'package:fintech/api_reguests/api_request.dart';
import 'login_page.dart';


class EmailVerification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailVerificationState();
  }
}

class _EmailVerificationState extends State<EmailVerification> {

  TextEditingController verificationController = TextEditingController();

  static String verificationTextString = 'Lütfən emailinizə baxın';

  Text verificationText = Text(
    verificationTextString,
    textAlign: TextAlign.center,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomComponents.aTextField(
              'Təsdiqləmə kodu',
              TextInputType.text,
              verificationController,
            ),
            verificationText,
            FlatButton(
              child: Text('Təsdiq edin'),
              onPressed: () {
                print(verificationController.text);
                verificationController.clear();
                Future future = ApiRequest.postVerificationCode(verificationController.text);

                future.then(
                    (data) {
                      setState(() {
                        verificationTextString = 'Qeydiyyatınız tamamlandı';
                        Navigator.push(
                          context,
                          MaterialPageRoute<LoginPage>(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      });
                    }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
