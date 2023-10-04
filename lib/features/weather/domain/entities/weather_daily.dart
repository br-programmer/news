import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

part 'weather_daily.freezed.dart';
part 'weather_daily.g.dart';

@freezed
class WeatherDaily with _$WeatherDaily {
  factory WeatherDaily({
    @JsonKey(name: 'dt') required int currentTime,
    @JsonKey(name: 'temp') required Temperature temperature,
    required List<WeatherData> weather,
  }) = _WeatherDaily;

  factory WeatherDaily.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyFromJson(json);
}

extension WeatherDailyX on WeatherDaily {
  String get min => '${temperature.min.toInt()}°';
  String get max => '${temperature.max.toInt()}°';

  String get day {
    final date = currentTime.date;
    if (date.today) {
      return texts.home.today;
    }
    if (date.tomorrow) {
      return texts.home.tomorrow;
    }
    return date.dayInText(LocaleSettings.currentLocale.languageCode);
  }
}
