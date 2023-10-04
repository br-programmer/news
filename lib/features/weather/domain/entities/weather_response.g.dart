// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
      current:
          CurrentWeatherData.fromJson(json['current'] as Map<String, dynamic>),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => WeatherDaily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'current': instance.current.toJson(),
      'daily': instance.daily.map((e) => e.toJson()).toList(),
    };
