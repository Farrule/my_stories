import 'package:flutter/material.dart';
import 'package:my_stories/repository/auth_repository.dart';

class SignInModel extends ChangeNotifier {
  final AuthRepository repository;
  String username = '';
  String password = '';
  String message = '';
  bool showPassword = false;

  SignInModel(this.repository);

  void setMessage(String value) {
    message = value;
    notifyListeners();
  }

  void togglePasswordVisible() {
    showPassword = !showPassword;
    notifyListeners();
  }

  String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '入力してください';
    }
    return null;
  }

  Future<bool> auth() async {
    print('username: $username, password: $password');
    var results = await repository.auth();
    return results;
  }
}
