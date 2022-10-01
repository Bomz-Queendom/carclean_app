import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../constant.dart';

class AddCredit extends StatefulWidget {
  const AddCredit({Key? key}) : super(key: key);

  @override
  State<AddCredit> createState() => _AddCreditState();
}

class _AddCreditState extends State<AddCredit> {
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
              "Add credit card",
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
                  "NAME",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.59,
                      color: Colors.grey),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.21)),
                    hintText: "Your Fullname",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "CREDIT CARD NUMBER",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.59,
                      color: Colors.grey),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.21)),
                    hintText: "**** **** **** **85",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  direction: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EXPIRED",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17.59,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.21)),
                              hintText: "10/27/2030",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CVV",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17.59,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.21)),
                              hintText: "***",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.21),
                        color: Theme.of(context).primaryColor),
                    width: 220,
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.creditCard,
                        color: Colors.white,
                      ),
                      title: Text(
                        "SCAN CARD",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.63,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 240),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.24),
                      ),
                      minimumSize: Size(463.11, 60),
                    ),
                    child: Text(
                      "Save",
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
