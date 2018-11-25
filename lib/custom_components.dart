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
          Colors.yellow[300],
          Colors.yellow[200],
          Colors.yellow[200],
          Colors.yellow[200],
          Colors.yellow[200],
        ],
      ),
    );
  }

  static expensesCard() {

    return Card(
      color: Colors.amberAccent,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
            child: Column(
              children: <Widget>[
                Text(
                  '12345\$',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text('Kredit borcunuz'),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          '45\$',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Center(
                        child: Text('Gündəlik büdcəniz'),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          '12\$',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Center(
                        child: Text('Gündəlik xərciniz'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget aTextField(String hint, TextInputType type, TextEditingController theController) {

    return ListTile(
      title: TextFormField(
        keyboardType: type,
        decoration: InputDecoration(
          hintText: hint,
        ),
        controller: theController,
      ),
    );
  }
}
