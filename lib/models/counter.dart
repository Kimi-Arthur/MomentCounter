import 'package:json_annotation/json_annotation.dart';
import 'package:moment_counter/models/event.dart';

part 'counter.g.dart';

@JsonSerializable()
class Counter {
  String title;

  int dailyGoal;

  List<Event> events = [];

  Counter({required this.title, this.dailyGoal = 1, this.events = const []});

  factory Counter.fromJson(Map<String, dynamic> json) =>
      _$CounterFromJson(json);

  Map<String, dynamic> toJson() => _$CounterToJson(this);
}
