import 'package:flutter/material.dart';

import '../custom_components.dart';

Widget getSubmissionTab() {

  TextEditingController loanAmountController = TextEditingController();
  TextEditingController loanRateController = TextEditingController();
  TextEditingController loanDurationController = TextEditingController();

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
            print(loanDurationController.text);
            print(loanRateController.text);
            print(loanAmountController.text);
          },
        ),
      ],
    ),
  );
}
