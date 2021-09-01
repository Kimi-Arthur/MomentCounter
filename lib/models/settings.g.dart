// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      language: json['language'] as String? ?? 'zh',
      nextCounter: json['next_counter'] as int? ?? 0,
      nextEvent: json['next_event'] as int? ?? 0,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'language': instance.language,
      'next_counter': instance.nextCounter,
      'next_event': instance.nextEvent,
    };
