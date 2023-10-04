import 'package:news/core/core.dart';
import 'package:news/features/features.dart';

abstract class IWeatherRepository {
  FutureHttpRequest<WeatherResponse> currentWeather({
    required WeatherRequest weatherRequest,
  });
  Future<PermisionLocationStatus> get permisionLocationStatus;
  Future<bool> requestPermisionLocation(PermisionLocationStatus status);
  Future<DevicePosition> get position;
  Future<City> city(DevicePosition position);
}
