import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Confirmation",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Booking confirmed!",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 21.56),
              ),
              Text(
                "Thank you for booking with us we will get back to you soon",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.43,
                  color: Color.fromARGB(255, 164, 164, 164),
                ),
                textAlign: TextAlign.center,
              ),
              Image.asset(
                "assets/images/image 16.png",
                width: 338,
                height: 245,
              ),
              Container(
                width: 373,
                height: 275,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.83),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 5.13),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    Column(
                      children: [
                        DetailValue(
                          dKey: "Company",
                          dValue: "Durathan Car Service",
                        ),
                        DetailValue(
                          dKey: "Vehicle type",
                          dValue: "Car",
                        ),
                        DetailValue(
                          dKey: "Payment method",
                          dValue: "Cash payment",
                        ),
                        DetailValue(
                          dKey: "Service",
                          dValue: "Body wash,Color coat",
                        ),
                      ],
                    ),
                    Text("120 ฿",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 24.64)),
                  ],
                ),
              ),
              Text(
                "Review booking",
                style: TextStyle(
                    fontSize: 16.43,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 164, 164, 164)),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/main_screen");
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.83)),
                    backgroundColor: Theme.of(context).primaryColor),
                child: Text(
                  "Back to home",
                  style: TextStyle(
                      fontSize: 21.56,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class DetailValue extends StatelessWidget {
  const DetailValue({
    Key? key,
    required this.dKey,
    required this.dValue,
  }) : super(key: key);

  final String dKey;
  final String dValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            dKey,
            style: TextStyle(
                color: Color.fromARGB(255, 164, 164, 164),
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
        Expanded(
          child: Text(
            dValue,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
          ),
        ),
      ],
    );
  }
}
