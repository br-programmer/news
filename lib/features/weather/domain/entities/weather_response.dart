import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  factory WeatherResponse({
    required double lat,
    required double lon,
    required String timezone,
    required CurrentWeatherData current,
    required List<WeatherDaily> daily,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
