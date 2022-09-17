import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SettingList extends StatelessWidget {
  const SettingList({
    Key? key,
    required this.title,
    required this.screenName,
  }) : super(key: key);

  final String title;
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: textColor,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            FontAwesomeIcons.angleRight,
            size: 22,
            color: Color.fromARGB(255, 39, 39, 39),
          ),
          onTap: () => Get.toNamed(screenName),
          visualDensity: VisualDensity(vertical: 3),
        ),
        SizedBox(
          height: 1.4,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
            ),
          ),
        ),
      ],
    );
  }
}