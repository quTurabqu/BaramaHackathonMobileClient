import 'package:flutter/material.dart';

class CustomComponents {
  static Widget textField(String hint, bool isPassword, bool isMail,
      TextEditingController theController) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: TextFormField(
        keyboardType:
            (isMail ? TextInputType.emailAddress : TextInputType.text),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
          hintText: hint,
        ),
        obscureText: isPassword,
        controller: theController,
      ),
    );
  }

  static Widget button(String text, Function onTap) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 35.0),
      child: RaisedButton(
        child: Text(text),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        color: Colors.green,
        textColor: Colors.white,
        onPressed: onTap,
      ),
    );
  }

  static BoxDecoration gradient() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
//            stops: [0.0, 0.2, 0.3, 0.5, 0.7, 0.9],
        colors: <Color>[
          Colors.blue[600],
          Colors.blue[500],
          Colors.blue[400],
          Colors.blue[400],
          Colors.blue[300],
        ],
      ),
    );
  }
}
