import 'package:carclean_app/components/CustomListItem.dart';
import 'package:carclean_app/controller/carwashController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final CarwashController carwashController = Get.put(CarwashController());

  @override
  Widget build(BuildContext context) {
    return GetX<CarwashController>(
      builder: (controller) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return CustomlistItem(
              carwashData: controller.carwashs[index],
            );
          },
          itemCount: controller.carwashs.length,
        );
      },
    );
  }
}
