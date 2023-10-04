import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(
    super.initialState, {
    required IWeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;
  final IWeatherRepository _weatherRepository;

  WeatherLoadedState get loadedState => state.maybeMap(
        loaded: (value) => value,
        orElse: () => throw AssertionError(),
      );

  Future<void> checkPermission() async {
    emit(const WeatherState.locating());
    final status = await _weatherRepository.permisionLocationStatus;
    if (status == PermisionLocationStatus.locationDisable) {
      return emit(const WeatherState.locationDisable());
    }
    if (status != PermisionLocationStatus.allow) {
      final allow = await _weatherRepository.requestPermisionLocation(status);
      if (allow) {
        return getPosition();
      }
      emit(const WeatherState.permissionDeneid());
    }
    return getPosition();
  }

  Future<void> getPosition() async {
    state.maybeMap(
      loaded: (loadedState) => emit(loadedState.copyWith(updating: true)),
      orElse: () {},
    );
    try {
      final position = await _weatherRepository.position;
      final city = await _weatherRepository.city(position);
      return _currentWeather(position, city);
    } catch (_) {
      emitCurrentState();
    }
  }

  Future<void> _currentWeather(DevicePosition position, City city) async {
    state.maybeMap(
      loaded: (_) {},
      orElse: () => emit(const WeatherState.loading()),
    );
    final weatherRequest = WeatherRequest(
      lat: position.lat,
      lon: position.lon,
      exclude: '${WeatherDelimited.alerts.name},'
          '${WeatherDelimited.hourly.name},'
          '${WeatherDelimited.minutely.name}',
      units: WeatherUnits.metric.name,
      lang: LocaleSettings.currentLocale.languageCode,
    );
    final response = await _weatherRepository.currentWeather(
      weatherRequest: weatherRequest,
    );
    response.when(
      left: (_) => emitCurrentState(),
      right: (weatherResponse) => state.maybeMap(
        loaded: (value) => emit(
          value.copyWith(
            updating: false,
            weatherResponse: weatherResponse,
            city: city,
          ),
        ),
        orElse: () => emit(
          WeatherState.loaded(
            weatherResponse: weatherResponse,
            city: city,
          ),
        ),
      ),
    );
  }

  void emitCurrentState() => state.maybeMap(
        loaded: (value) => emit(value),
        orElse: () => emit(const WeatherState.error()),
      );
}
