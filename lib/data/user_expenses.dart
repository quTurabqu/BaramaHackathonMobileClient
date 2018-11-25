
class Expense {

  Expense(this.monthlyExpense) {
    expenses = List<OneTimeExpense>();
  }

  double monthlyExpense;
  List<OneTimeExpense> expenses;

  double loan;
}


class OneTimeExpense {

  double amount;
  String description;
  DateTime dateTime;
}