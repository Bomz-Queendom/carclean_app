import 'package:carclean_app/components/CustomRecentItem.dart';
import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({Key? key}) : super(key: key);

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 111,
        title: Text(
          "My History",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
      ),
      body: CustomRecentItem(
          title: "Durathan Car Service",
          subTile: "27 Aug 2609, 11.00-12.00 Car, full clean service",
          imagePath: "assets/images/Rectangle 40.png"),
    );
  }
}

