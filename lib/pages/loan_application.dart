import 'package:flutter/material.dart';


import '../tabs/application_responses.dart';
import '../tabs/application_submissions.dart';



class LoanApplicationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _StateLoanApplicationPage();
  }
}

class _StateLoanApplicationPage extends State<LoanApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Kredit müraciəti'),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Container(
                child: Tab(icon: Image.asset('assets/apply.png')),
                margin: EdgeInsets.all(5.0),
              ),
              Container(
                child: Tab(icon: Image.asset('assets/responses.png')),
                margin: EdgeInsets.all(5.0),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: SubmissionTab(),
            ),
            Center(
              child: getResponsesTab(),
            ),
          ],
        ),
      ),
    );
  }
}
