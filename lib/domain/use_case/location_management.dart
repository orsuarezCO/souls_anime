
import 'package:geolocator/geolocator.dart';
import 'package:souls_anime/data/services/geolocation.dart';

class LocationManager {
  final gpsService = GpsService();

  Future<Position> getCurrentLocation() async {
    // Retorna la ubicacion actual
    return await gpsService.getCurrentLocation();
  }
}
