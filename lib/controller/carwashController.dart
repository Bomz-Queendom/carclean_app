import 'package:carclean_app/models/carwashModel.dart';
import 'package:carclean_app/models/serviceModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CarwashController extends GetxController {
  var carwashs = <CarwashModels>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchCarwashs();
    super.onInit();
  }

  void fetchCarwashs() async {
    await Future.delayed(Duration(seconds: 1));
    var carwashsResult = [
      CarwashModels(
        lat: 19.021994683688266,
        long: 99.91523609273517,
        id: 1,
        name: "ร้านนัดยิ้มคาร์แคร์",
        estimatedPrice: "100 - 500฿",
        businesHours: "8:30 - 18.00 น.",
        tel: "0966929222",
        imagePath: "assets/images/nutyim.jpg",
        service: [
          ServiceModel(
              serviceName: "ล้างรถยนต์",
              serviceIcon: FontAwesomeIcons.carSide,
              servicePrice: 200,
              isSelect: false),
          ServiceModel(
              serviceName: "ล้างรถกระบะ",
              serviceIcon: FontAwesomeIcons.truckPickup,
              servicePrice: 200,
              isSelect: false),
          ServiceModel(
              serviceName: "ล้างรถตู้",
              serviceIcon: FontAwesomeIcons.vanShuttle,
              servicePrice: 500,
              isSelect: false),
          ServiceModel(
              serviceName: "ล้างรถจักรยานยนต์",
              serviceIcon: FontAwesomeIcons.motorcycle,
              servicePrice: 100,
              isSelect: false),
        ],
        timeSlot: [
          "9.00 - 10.00",
          "10.00 - 11.00",
          "11.00 - 12.00",
          "13.00 - 14.00",
        ],
      )
    ];

    carwashs.assignAll(carwashsResult);
  }
}
