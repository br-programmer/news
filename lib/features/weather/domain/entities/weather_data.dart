import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/core/core.dart';
import 'package:news/i18n/translations.g.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@freezed
class WeatherData with _$WeatherData {
  factory WeatherData({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}

extension WeatherDataX on WeatherData {
  String get iconUrl => '${DartDefine.weatherIconsUrl}/$icon@4x.png';
  String get weatherCondition {
    const weatherCondition = 'home.weatherCondition';
    return texts['$weatherCondition.${main.toLowerCase()}'] as String? ?? '';
  }
}
