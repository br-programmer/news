// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'weather_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherRequestImpl _$$WeatherRequestImplFromJson(Map<String, dynamic> json) =>
    _$WeatherRequestImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      exclude: json['exclude'] as String,
      units: json['units'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$$WeatherRequestImplToJson(
        _$WeatherRequestImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'exclude': instance.exclude,
      'units': instance.units,
      'lang': instance.lang,
    };
