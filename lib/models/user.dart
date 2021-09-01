import 'package:json_annotation/json_annotation.dart';
import 'package:moment_counter/models/counter.dart';
import 'package:moment_counter/models/settings.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String name;

  Settings settings = Settings();

  List<Counter> counters;

  User({this.name = 'User', Settings? settings, this.counters = const []})
      : this.settings = settings ?? Settings();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
