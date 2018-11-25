import 'package:http/http.dart';
import 'dart:convert';

enum RequestType {
  POST,
  GET,
}

class ApiRequest {

  Future<String> getSessionResponse(String email, String password) async {
    final response = await post(
      'http://18.203.84.151:8082/login/send',
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );

    try {
      if (response.statusCode == 200) {
        return response.body.toString();
      }
      else {
        return 'ERROR';
      }
    } catch (Exception) {
      print('Exception in class ApiRequest');
      return 'Exception';
    }
  }

  static Future<String> getRegistrationCode(String name, String surname,
                                          String email, String password) async {

    final response = await post(
      'http://18.203.84.151:8082/register/send',
      body: jsonEncode({
        'name': name,
        'surname': surname,
        'email': email,
        'password': password,
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );

    try {
      if (response.statusCode == 200) {
        return response.body.toString();
      }
      else {
        return 'ERROR';
      }
    } catch (Exception) {
      print('Exception in class ApiRequest');
      return 'Exception';
    }
  }

  static Future<String> postVerificationCode(String code) async {

    final response = await post(
      'http://18.203.84.151:8082/register/send',
      body: jsonEncode({
        'key': code,
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );

    try {
      if (response.statusCode == 200) {
        return response.body.toString();
      }
      else {
        return 'ERROR';
      }
    } catch (Exception) {
      print('Exception in class ApiRequest');
      return 'Exception';
    }
  }

  static Future<String> submitApplication(String applicationCode, String applicationDate,
                                          double amount, int durationInMonths, double interestRate
                                          double monthlyIcome, double monthlyExpense) async {
    final response = await post(
      // flask server
      'http://18.203.84.151:5000/addApp',
      body: jsonEncode({
        'application_code': applicationCode,
        'application_date': applicationDate,
        'amount': amount,
        'months': durationInMonths,
        'desired_interest_rate': interestRate,
        'monthly_income': monthlyIcome,
        'monthly_expense': monthlyExpense,
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );

    try {
      if (response.statusCode == 200) {
        return response.body.toString();
      }
      else {
        return 'ERROR';
      }
    } catch (Exception) {
      print('Exception in class ApiRequest');
      return 'Exception';
    }
  }

}


class RegisterationInfo {

  String name, surname, email, password;

  RegisterationInfo(this.name, this.surname, this.email, this.password);
}











