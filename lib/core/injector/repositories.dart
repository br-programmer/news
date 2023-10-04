import 'package:get_it/get_it.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';

void injectRepositories({
  required Http newsHttp,
  required Http weatherHttp,
}) {
  GetIt.I.registerLazySingleton<INewsRepository>(
    () => NewsRepository(http: newsHttp),
  );
  GetIt.I.registerLazySingleton<IWeatherRepository>(
    () => WeatherRepository(
      http: weatherHttp,
      geolocatorService: Services.geolocator,
    ),
  );
}

class Repositories {
  Repositories._();
  static INewsRepository get news => GetIt.I.get();
  static IWeatherRepository get weather => GetIt.I.get();
}
