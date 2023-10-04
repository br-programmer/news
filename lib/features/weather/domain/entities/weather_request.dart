import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_request.freezed.dart';
part 'weather_request.g.dart';

enum WeatherDelimited {
  current,
  minutely,
  hourly,
  daily,
  alerts,
}

enum WeatherUnits {
  standard,
  metric,
  imperial,
}

@freezed
class WeatherRequest with _$WeatherRequest {
  factory WeatherRequest({
    required double lat,
    required double lon,
    required String exclude,
    required String units,
    required String lang,
  }) = _WeatherRequest;

  factory WeatherRequest.fromJson(Map<String, dynamic> json) =>
      _$WeatherRequestFromJson(json);
}
