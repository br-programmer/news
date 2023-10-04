import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
class Temperature with _$Temperature {
  factory Temperature({
    required double min,
    required double max,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
