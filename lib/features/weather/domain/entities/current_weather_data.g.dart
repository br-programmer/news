// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'current_weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherDataImpl _$$CurrentWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherDataImpl(
      currentTime: json['dt'] as int,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
      temperature: (json['temp'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      windSpeed: (json['wind_speed'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CurrentWeatherDataImplToJson(
        _$CurrentWeatherDataImpl instance) =>
    <String, dynamic>{
      'dt': instance.currentTime,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temperature,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
    };
