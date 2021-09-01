import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

@JsonSerializable()
class Settings {
  String language;
  int nextCounter;
  int nextEvent;

  Settings({this.language = 'zh', this.nextCounter = 0, this.nextEvent = 0});

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
