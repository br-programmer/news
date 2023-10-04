part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.locationDisable() = _LocationDisable;
  const factory WeatherState.locating() = _Locating;
  const factory WeatherState.permissionDeneid() = _PermissionDeneid;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded({
    required WeatherResponse weatherResponse,
    @Default(false) bool updating,
    required City city,
  }) = WeatherLoadedState;
  const factory WeatherState.error() = _Error;
}
