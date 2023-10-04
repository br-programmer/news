// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
