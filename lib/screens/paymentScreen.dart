import 'package:carclean_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 100,
        title: Wrap(
          spacing: 24,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () => Get.back(),
              elevation: 0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: textColor,
              ),
            ),
            Text(
              "Payment method",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor)),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Wrap(
              runSpacing: 13,
              children: [
                Text(
                  "CURRENT METHOD",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.67),
                ),
                PaymentCard(),
                Text(
                    "Choose desired vehicle type. We offer cars suiable for most everyday needs.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.62,
                        fontWeight: FontWeight.w600)),
                DesiredCard(
                    title: "**** **** **** 8685",
                    subTitle: "Expires 01/95",
                    trailing: [FontAwesomeIcons.circleCheck],
                    press: () {}),
                DesiredCard(
                    title: "**** **** **** 4234",
                    subTitle: "Expires 01/95",
                    trailing: [
                      FontAwesomeIcons.circlePlus,
                      FontAwesomeIcons.circleCheck
                    ],
                    press: () => Get.toNamed("add_credit_screen")),
                DesiredCard(
                  title: "Anothersupofficial@gmail.com",
                  subTitle: "",
                  trailing: [FontAwesomeIcons.circleCheck],
                  press: () {},
                ),
                SizedBox(height: 240),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed("confirm_screen"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.24),
                      ),
                      minimumSize: Size(463.11, 60),
                    ),
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.56,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.9,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.24),
          side: BorderSide(color: Colors.black.withOpacity(0.25))),
      child: ListTile(
        leading: ImageIcon(
          AssetImage("assets/icons/money-bill-icon.png"),
          color: Color.fromARGB(255, 255, 169, 3),
          size: 76,
        ),
        title: Text(
          "Cash payment",
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w600, fontSize: 15.67),
        ),
        subtitle: Text(
          "Default method",
          style: TextStyle(
              color: Color.fromARGB(255, 164, 164, 164),
              fontWeight: FontWeight.w600,
              fontSize: 11.75),
        ),
        trailing: Wrap(
          spacing: 20,
          children: [
            Icon(FontAwesomeIcons.circleCheck,
                color: CupertinoColors.activeGreen, size: 30),
          ],
        ),
        contentPadding: EdgeInsets.all(15),
      ),
    );
  }
}

class DesiredCard extends StatelessWidget {
  const DesiredCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.trailing,
    required this.press,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final List<IconData> trailing;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.9,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.24),
          side: BorderSide(color: Colors.black.withOpacity(0.25))),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w600, fontSize: 15.67),
        ),
        subtitle: subTitle != ""
            ? Text(
                subTitle,
                style: TextStyle(
                    color: Color.fromARGB(255, 164, 164, 164),
                    fontWeight: FontWeight.w600,
                    fontSize: 11.75),
              )
            : null,
        trailing: Wrap(
          spacing: 20,
          children: [
            for (var i in trailing)
              IconButton(
                onPressed: () {
                  press();
                },
                icon: Icon(i,
                    color: i == FontAwesomeIcons.circlePlus
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                    size: 30),
              ),
          ],
        ),
        contentPadding: EdgeInsets.all(15),
      ),
    );
  }
}
