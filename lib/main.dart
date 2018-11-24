import 'package:flutter/material.dart';

import 'pages/register_page.dart';


void main() => runApp(LandingPage());



class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}


