import 'package:carclean_app/constant.dart';
import 'package:carclean_app/models/carwashModel.dart';
import 'package:carclean_app/screens/serviceScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomlistItem extends StatelessWidget {
  const CustomlistItem({Key? key, required this.carwashData}) : super(key: key);

  final CarwashModels carwashData;

  @override
  Widget build(BuildContext context) {
    Color gray125 = Color.fromARGB(255, 125, 125, 125);
    return GestureDetector(
      onTap: () {
        Get.to(ServiceScreen(
          title: carwashData.name,
          service: carwashData.service,
          time: carwashData.timeSlot,
          lat: carwashData.lat,
          long: carwashData.long,
        ));
      },
      child: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.6,
                  color: textColor.withOpacity(0.25),
                  offset: Offset(0, 4.6),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(top: 20),
              height: 138,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      carwashData.imagePath,
                      height: 103.52,
                      width: 103.52,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carwashData.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.4,
                              color: textColor),
                        ),
                        Text(
                          "${carwashData.estimatedPrice}\n${carwashData.businesHours}\nTel ${carwashData.tel}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 11.5,
                              color: gray125),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "0.5 km",
                      style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w600,
                        color: gray125,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
