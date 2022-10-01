import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapbox extends StatelessWidget {
  const Mapbox({
    Key? key,
    required this.lat,
    required this.lng,
  }) : super(key: key);

  final double lat;
  final double lng;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 304,
        decoration: BoxDecoration(color: Colors.grey),
        child: FlutterMap(
          options: MapOptions(center: LatLng(lat, lng), zoom: 13),
          children: [
            TileLayer(
              urlTemplate:
              "https://api.mapbox.com/styles/v1/bomb23/cl873whrg001a15qdrzu6q41g/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYm9tYjIzIiwiYSI6ImNsODczcTI0ZTB6amMzb3F5Y2V1OWNicDcifQ.0PwBrC9MUAAdEPEJj7SCgg",
            ),
          ],
        ),
      ),
    );
  }
}
