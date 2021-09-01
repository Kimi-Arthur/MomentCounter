import 'package:json_annotation/json_annotation.dart';
import 'package:moment_counter/models/event.dart';

part 'counter.g.dart';

@JsonSerializable()
class Counter {
  String title;

  List<Event> events = [];

  Counter({required this.title, this.events = const []});

  factory Counter.fromJson(Map<String, dynamic> json) =>
      _$CounterFromJson(json);

  Map<String, dynamic> toJson() => _$CounterToJson(this);
}
