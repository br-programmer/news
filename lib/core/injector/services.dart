import 'package:get_it/get_it.dart';
import 'package:news/core/core.dart';

void injectServices() {
  GetIt.I.registerLazySingleton(() => GeolocatorService());
}

class Services {
  Services._();

  static GeolocatorService get geolocator => GetIt.I.get();
}
