import 'package:flutter/material.dart';


import 'package:fintech/custom_components.dart';
import 'package:fintech/builder_util_classes/Expense.dart';

class BudgetPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BudgetPageState();
  }
}


class _BudgetPageState extends State<BudgetPage> {

  List<Expense> _dailyExpenses = [
    Expense('Washed my car', 10),
    Expense('My wive\'s birthday', 50),
  ];

  @override
  Widget build(BuildContext context) {

    Widget _buildExpenseListTile(int index) {
      double amount = _dailyExpenses[index].amount;
      String to = _dailyExpenses[index].to;
      return ListTile(
        title: Text('$amount \$'),
        subtitle: Text('$to'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maddi vəziyyətiniz'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CustomComponents.expensesCard(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>_buildExpenseListTile(index),
              itemCount: _dailyExpenses.length,
            ),
          ),
        ],
      ),
    );
  }
}