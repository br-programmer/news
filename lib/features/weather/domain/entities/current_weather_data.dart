import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';

part 'current_weather_data.freezed.dart';
part 'current_weather_data.g.dart';

@freezed
class CurrentWeatherData with _$CurrentWeatherData {
  factory CurrentWeatherData({
    @JsonKey(name: 'dt') required int currentTime,
    required int sunrise,
    required int sunset,
    @JsonKey(name: 'temp') required double temperature,
    required int pressure,
    required int humidity,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    required List<WeatherData> weather,
  }) = _CurrentWeatherData;

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDataFromJson(json);
}

extension CurrentWeatherDataX on CurrentWeatherData {
  String get currentTemperature => '${temperature.toInt()}';
  String get currentWindSpeed {
    return '${(windSpeed * 3.6).toInt()}';
  }
}
