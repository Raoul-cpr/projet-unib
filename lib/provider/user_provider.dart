import 'package:flutter/cupertino.dart';
import 'package:unib/authMethods.dart';
import 'package:unib/models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  User get getUser => _user!;
  final AuthMethods _authMethods = AuthMethods();
  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();

    _user = user;

    notifyListeners();
  }
}
