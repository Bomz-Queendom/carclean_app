import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomlistItem extends StatelessWidget {
  const CustomlistItem({
    Key? key,
    required this.title,
    required this.price,
    required this.time,
    required this.tel,
    required this.km,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String price;
  final String time;
  final String tel;
  final String km;

  @override
  Widget build(BuildContext context) {
    Color gray125 = Color.fromARGB(255, 125, 125, 125);
    return GestureDetector(
      onTap: () => Get.toNamed("servicesScreen"),
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
                      imagePath,
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
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.4,
                              color: textColor),
                        ),
                        Text(
                          "${price}\n${time}\nTel ${tel}",
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
