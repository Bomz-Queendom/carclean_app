import 'package:carclean_app/models/TimeSlotModel.dart';
import 'package:carclean_app/models/serviceModel.dart';

class CarwashModels {
  final int id;
  final String name;
  final String estimatedPrice;
  final String businesHours;
  final String tel;
  final String imagePath;
  final List<ServiceModel> service;
  final List<String> timeSlot;
  final double lat;
  final double long;

  CarwashModels({
    required this.lat,
    required this.long,
    required this.id,
    required this.name,
    required this.estimatedPrice,
    required this.businesHours,
    required this.tel,
    required this.imagePath,
    required this.service,
    required this.timeSlot,
  });
}
