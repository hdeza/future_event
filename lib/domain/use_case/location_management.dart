import 'package:geolocator/geolocator.dart';
import 'package:nulti_auth/data/services/geolocation.dart';

class LocationManager {
  final gpsService = GpsService();

  Future<Position> getCurrentLocation() async {
    return await gpsService.getCurrentLocation();
  }
}