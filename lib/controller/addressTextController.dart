import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class AddressTextController extends GetxController {
  late Position _position;
  var address = "".obs;
  late StreamSubscription<Position> streamSubscription;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getLocation();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error("Location services are disabled.");
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location Permisstions are denied.");
      }
    }
    streamSubscription = Geolocator.getPositionStream().listen(
      (Position position) {
        _position = position;
        getAddress(position);
      },
    );
  }

  Future<void> getAddress(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    address.value = "${place.street} ${place.subAdministrativeArea}";
  }
}
