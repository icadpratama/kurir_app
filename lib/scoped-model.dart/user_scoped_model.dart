import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kurirapp/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  User _authenticatedUser;

  void authenticate(String email, String password) async {
    Map<String, dynamic> authData = {
      "email": email,
      "password": password,
      "returnSecureToken": true,
    };
    try {
      http.Response response = await http.post(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCdiY8g2Mf11CsJC4YML8mso0Wgvlnuo6o",
        body: json.encode(authData),
        headers: {'Content-Type': 'application/json'},
      );

      print("Printing the response body: ${response.body}");
    } catch (error) {
      print("The error singning up: $error");
    }
  }
}
