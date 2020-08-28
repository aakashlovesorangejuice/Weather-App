import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;
  Position position;
  Location({this.latitude, this.longitude});
  Future<void> getCurrentLocation() async {
    try {
      position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e) {
      print(e);
    }
  }
}
