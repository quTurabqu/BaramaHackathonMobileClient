import 'package:flutter/material.dart';

import 'pages/landing_page.dart';


void main() => runApp(HomePage());



class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}


