import 'package:flutter/material.dart';

import 'register_page.dart';
import 'login_page.dart';


class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Column(
           children: <Widget>[
             FlatButton(
               child: Text('Daxil ol'),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) => LoginPage(),
                 ));
               },
             ),

             FlatButton(
               child: Text('Qeydiyyatdan keç'),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(
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