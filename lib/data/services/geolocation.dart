
import 'package:geolocator/geolocator.dart';
import 'package:souls_anime/domain/services/location.dart';

class GpsService implements LocationInterface {
  @override
  Future<Position> getCurrentLocation() async {
    // Usando el paquete Geolocator obtenga la posicion actual
    return await Geolocator.getCurrentPosition();
  }
}
