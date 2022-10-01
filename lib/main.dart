import 'package:carclean_app/constant.dart';
import 'package:carclean_app/screens/ProfileScreen.dart';
import 'package:carclean_app/screens/addCredit.dart';
import 'package:carclean_app/screens/changePassword.dart';
import 'package:carclean_app/screens/confirmScreen.dart';
import 'package:carclean_app/screens/editProfileScreen.dart';
import 'package:carclean_app/screens/firstScreen.dart';
import 'package:carclean_app/screens/home.dart';
import 'package:carclean_app/screens/mainScreen.dart';
import 'package:carclean_app/screens/paymentScreen.dart';
import 'package:carclean_app/screens/serviceScreen.dart';
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
        GetPage(name: '/profile_screen', page: () => ProfileScreen()),
        GetPage(name: '/edit_profile_screen', page: () => EditProfileScreen()),
        GetPage(
            name: '/change_password_screen',
            page: () => ChangePasswordScreen()),
        GetPage(name: '/payment_screen', page: () => PaymentScreen()),
        GetPage(name: '/add_credit_screen', page: () => AddCredit()),
        GetPage(name: "/confirm_screen", page: () => ConfirmScreen())
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Prompt", primaryColor: primaryColor),
      home: FirstScreen(),
    );
  }
}
