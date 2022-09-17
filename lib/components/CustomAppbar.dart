import 'package:carclean_app/controller/addressTextController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'searchBox.dart';

PreferredSize CustomAppBar(BuildContext context) {
  final AddressTextController c = Get.put(AddressTextController());
  double height = AppBar().preferredSize.height;
  return PreferredSize(
    preferredSize: Size(MediaQuery.of(context).size.width, 168),
    child: Stack(
      children: <Widget>[
        Container(
          height: height + 80,
          child: AppBar(
            toolbarHeight: height + 50,
            backgroundColor: Theme.of(context).primaryColor,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.locationDot),
            ),
            title: Obx(
              () => Text(
                "${c.address}",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            titleSpacing: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/clipboard-list-icon.svg",
                  height: 25,
                  width: 17,
                ),
                padding: EdgeInsets.symmetric(horizontal: 3),
              )
            ],
          ),
        ),

        Container(), // Required some widget in between to float AppBar

        Positioned(
            // To take AppBar Size only
            top: 110,
            left: 10,
            right: 10,
            child: searchBox())
      ],
    ),
  );
}
