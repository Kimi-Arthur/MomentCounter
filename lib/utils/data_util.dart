import 'dart:convert';

import 'package:moment_counter/models/counter.dart';
import 'package:moment_counter/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/event.dart';

class DataUtil {
  SharedPreferences _prefs;

  static DataUtil? _instance;

  static Future<DataUtil> get instance async {
    _instance ??= DataUtil._(prefs: await SharedPreferences.getInstance());
    return _instance!;
  }

  DataUtil._({required prefs}) : _prefs = prefs;

  Future<User> loadUser() async {
    final data = _prefs.getString("user");
    if (data == null) {
      final user = User();
      user.counters = [
        Counter(
            title: '看书', events: [Event(dateTime: DateTime.now(), amount: 1)]),
        Counter(
            title: '写字', events: [Event(dateTime: DateTime.now(), amount: 1)])
      ];
      await saveUser(user);
      return user;
    }

    return User.fromJson(jsonDecode(data));
  }

  Future<void> saveUser(User user) =>
      _prefs.setString('user', jsonEncode(user));
}
