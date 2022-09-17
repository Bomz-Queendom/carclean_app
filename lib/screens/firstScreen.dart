import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/image 12.png",
                height: 480,
                width: 480,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 18),
                child: Text(
                  "Car Wash service",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 61),
                child: Text(
                  "Sample to standard car service that\n yourcar deserve",
                  style: TextStyle(
                      fontSize: 21.6,
                      color: Color.fromARGB(255, 77, 77, 77),
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/main_screen");
                },
                child: Text(
                  "Get Start",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  minimumSize: Size(190, 60),
                  primary: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
