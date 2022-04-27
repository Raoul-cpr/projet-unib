import 'package:flutter/cupertino.dart';
import 'package:unib/authMethods.dart';
import 'package:unib/models/user.dart';

//cette classe nous permetrra de controller les etats dans les pages
class UserProvider with ChangeNotifier {
  User? _user;
  User get getUser => _user!;
  final AuthMethods _authMethods = AuthMethods();
  Future<void> refreshUser() async {
    if (_user == null) {
      User user = await _authMethods.getUserDetails();

      _user = user;
    }

    notifyListeners();
  }
}
