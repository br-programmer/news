import 'package:news/core/core.dart';
import 'package:news/features/features.dart';

class WeatherRepository implements IWeatherRepository {
  WeatherRepository({
    required Http http,
    required GeolocatorService geolocatorService,
  })  : _http = http,
        _geolocatorService = geolocatorService;

  final Http _http;
  final GeolocatorService _geolocatorService;

  @override
  FutureHttpRequest<WeatherResponse> currentWeather({
    required WeatherRequest weatherRequest,
  }) {
    return performHttpRequest(
      _http.send(
        '/data/2.5/onecall',
        queryParameters: weatherRequest.toJson(),
        parser: (_, json) => WeatherResponse.fromJson(json as Json),
      ),
    );
  }

  @override
  Future<PermisionLocationStatus> get permisionLocationStatus {
    return _geolocatorService.permisionLocationStatus;
  }

  @override
  Future<DevicePosition> get position => _geolocatorService.position;

  @override
  Future<bool> requestPermisionLocation(PermisionLocationStatus status) {
    return _geolocatorService.requestPermisionLocation(status);
  }

  @override
  Future<City> city(DevicePosition position) {
    return _geolocatorService.city(position);
  }
}
