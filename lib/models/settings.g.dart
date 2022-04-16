// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) => Settings(
      language: json['language'] as String? ?? 'zh',
      nextCounter: json['nextCounter'] as int? ?? 0,
      nextEvent: json['nextEvent'] as int? ?? 0,
    );

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'language': instance.language,
      'nextCounter': instance.nextCounter,
      'nextEvent': instance.nextEvent,
    };
