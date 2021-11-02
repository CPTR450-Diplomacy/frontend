import 'package:flutter/foundation.dart';

class LoginModel extends ChangeNotifier {
  String username = '';
  String password = '';

  set setUsername(String username) {
    this.username = username;
  }

  set setPassword(String password) {
    this.password = password;
  }

  void notify() {
    notifyListeners();
  }
}
