
class Income {

  Income(this.monthlyIncome) {
    incomes = List<OneTimeIncome>();
  }

  double monthlyIncome;
  List<OneTimeIncome> incomes;

}


class OneTimeIncome {

  double amount;
  String description;
  DateTime dateTime;
}