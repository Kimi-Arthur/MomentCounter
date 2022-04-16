// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Counter _$CounterFromJson(Map<String, dynamic> json) => Counter(
      title: json['title'] as String,
      dailyGoal: json['dailyGoal'] as int? ?? 1,
      events: (json['events'] as List<dynamic>?)
              ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CounterToJson(Counter instance) => <String, dynamic>{
      'title': instance.title,
      'dailyGoal': instance.dailyGoal,
      'events': instance.events,
    };
