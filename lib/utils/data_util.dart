import 'dart:convert';

import 'package:moment_counter/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataUtil {
  SharedPreferences _prefs;

  static late DataUtil instance;

  static Future<void> init() async {
    instance = DataUtil._(prefs: await SharedPreferences.getInstance());
  }

  DataUtil._({required prefs}) : _prefs = prefs;

  User loadUser() {
    final data = _prefs.getString("user");
    if (data == null) {
      final user = User();
      saveUser(user);
      return user;
    }

    return User.fromJson(jsonDecode(data));
  }

  void saveUser(User user) {
    _prefs.setString("user", jsonEncode(user));
  }
}
