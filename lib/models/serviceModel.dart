import 'package:flutter/material.dart';

class ServiceModel {
  final String serviceName;
  final IconData serviceIcon;
  final double servicePrice;
  final bool isSelect;

  ServiceModel(
      {required this.serviceName,
      required this.serviceIcon,
      required this.servicePrice,
      required this.isSelect});
}
