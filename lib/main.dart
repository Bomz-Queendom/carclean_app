import 'package:carclean_app/constant.dart';
import 'package:carclean_app/screens/firstScreen.dart';
import 'package:carclean_app/screens/home.dart';
import 'package:carclean_app/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/first_screen', page: () => FirstScreen()),
        GetPage(name: '/main_screen', page: () => MainScreen()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Prompt", primaryColor: primaryColor),
      home: FirstScreen(),
    );
  }
}
