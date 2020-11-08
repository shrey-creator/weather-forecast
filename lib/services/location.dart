import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double lon;
  Future<void> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lat = position.latitude;
    lon = position.longitude;
  }
}
