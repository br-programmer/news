import 'dart:async';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:news/features/features.dart';

enum PermisionLocationStatus {
  locationDisable,
  allow,
  deneid,
  deneidForEver,
  unknow,
}

class GeolocatorService {
  Future<PermisionLocationStatus> get permisionLocationStatus async {
    final locationStatus = await Geolocator.isLocationServiceEnabled();
    if (!locationStatus) {
      return PermisionLocationStatus.locationDisable;
    }
    final permission = await Geolocator.checkPermission();
    switch (permission) {
      case LocationPermission.denied:
        return PermisionLocationStatus.deneid;
      case LocationPermission.deniedForever:
        return PermisionLocationStatus.deneidForEver;
      case LocationPermission.whileInUse:
      case LocationPermission.always:
        return PermisionLocationStatus.allow;
      case LocationPermission.unableToDetermine:
        return PermisionLocationStatus.unknow;
    }
  }

  Future<bool> requestPermisionLocation(PermisionLocationStatus status) async {
    switch (status) {
      case PermisionLocationStatus.allow:
        return true;
      case PermisionLocationStatus.deneid:
        final permission = await Geolocator.requestPermission();
        return permission == LocationPermission.whileInUse ||
            permission == LocationPermission.always;
      case PermisionLocationStatus.deneidForEver:
      case PermisionLocationStatus.unknow:
      case PermisionLocationStatus.locationDisable:
        return false;
    }
  }

  Future<DevicePosition> get position async {
    final currentPosition = await Geolocator.getCurrentPosition();
    return DevicePosition(
      lat: currentPosition.latitude,
      lon: currentPosition.longitude,
    );
  }

  Future<City> city(DevicePosition position) async {
    final placemarks = await placemarkFromCoordinates(
      position.lat,
      position.lon,
    );
    final placemark = placemarks.first;
    return City(
      countryCode: placemark.isoCountryCode ?? '',
      city: placemark.locality ?? '',
    );
  }
}
