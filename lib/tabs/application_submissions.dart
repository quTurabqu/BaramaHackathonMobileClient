import 'package:flutter/material.dart';

import '../custom_components.dart';
import 'package:fintech/api_reguests/api_request.dart';

class SubmissionTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SubmisisonTabState();
  }
}

class _SubmisisonTabState extends State<SubmissionTab> {

  TextEditingController loanAmountController = TextEditingController();
  TextEditingController loanRateController = TextEditingController();
  TextEditingController loanDurationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          CustomComponents.aTextField(
            'İstədiyiniz kredit məbləği(manatla)',
            TextInputType.number,
            loanAmountController,
          ),
          CustomComponents.aTextField(
            'İstədiyiniz faiz dərəcəsi',
            TextInputType.number,
            loanRateController,
          ),
          CustomComponents.aTextField(
            'Kredit müddəti(aylarla)',
            TextInputType.number,
            loanDurationController,
          ),
          CustomComponents.button(
            'Müraciət et',
            () {
              ApiRequest.submitApplication(
                  null,
                  '12.04.1999',
                  5000,
                  12,
                  22,
                  1000,
                  800,
              );
            },
          ),
        ],
      ),
    );
  }
}
