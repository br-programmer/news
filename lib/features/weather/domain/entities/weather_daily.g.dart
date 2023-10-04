// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'weather_daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDailyImpl _$$WeatherDailyImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDailyImpl(
      currentTime: json['dt'] as int,
      temperature: Temperature.fromJson(json['temp'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherDailyImplToJson(_$WeatherDailyImpl instance) =>
    <String, dynamic>{
      'dt': instance.currentTime,
      'temp': instance.temperature.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };
