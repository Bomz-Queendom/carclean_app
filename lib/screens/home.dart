import 'package:carclean_app/components/CustomAppbar.dart';
import 'package:carclean_app/components/CustomListItem.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color gray125 = Color.fromARGB(255, 125, 125, 125);

  @override
  Widget build(BuildContext context) {
    return CustomlistItem(
      imagePath: "assets/images/Rectangle 40.png",
      title: "Durathan Car Service",
      price: "\$70 - 999",
      time: "9.00 am - 18.00 pm",
      tel: "067754668",
      km: "0.5 km",
    );
  }
}

