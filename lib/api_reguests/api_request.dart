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
}


class RegisterationInfo {

  String name, surname, email, password;

  RegisterationInfo(this.name, this.surname, this.email, this.password);
}











