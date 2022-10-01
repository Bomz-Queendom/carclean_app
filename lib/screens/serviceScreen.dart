import 'package:carclean_app/constant.dart';
import 'package:carclean_app/models/TimeSlotModel.dart';
import 'package:carclean_app/models/serviceModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../components/serviceComponent/mapbox.dart';
import '../components/serviceComponent/optionCard.dart';
import '../components/serviceComponent/optionService.dart';
import '../components/serviceComponent/timeSlotChoice.dart';
import '../components/serviceComponent/titleSubbody.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen(
      {Key? key,
      required this.title,
      required this.service,
      required this.time,
      required this.lat,
      required this.long})
      : super(key: key);

  final String title;
  final List<ServiceModel> service;
  final List<String> time;
  final double lat;
  final double long;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: FloatingActionButton(
          onPressed: () => Get.back(),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 217, 217, 217).withOpacity(0.47),
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: textColor,
          ),
        ),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Mapbox(lat: lat, lng: long),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: MediaQuery.of(context).size.height - 287,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Theme.of(context).primaryColor),
            child: TitleSubbody(title: title),
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height - 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         OptionCard(serviceIcon: FontAwesomeIcons.carSide),
                //         OptionCard(serviceIcon: FontAwesomeIcons.truckPickup),
                //         OptionCard(serviceIcon: FontAwesomeIcons.vanShuttle),
                //         OptionCard(serviceIcon: FontAwesomeIcons.motorcycle),
                //       ],
                //     ),
                //     SizedBox(height: 17),
                //     Row(
                //       children: [
                //         Expanded(
                //           child: Text(
                //             "Price",
                //             style: TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 21.23,
                //                 fontWeight: FontWeight.w500),
                //           ),
                //         ),
                //         Text(
                //           "0 ฿",
                //           style: TextStyle(
                //               color: textColor,
                //               fontSize: 17,
                //               fontWeight: FontWeight.w500),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                ChooseService(service: service),
                SizedBox(height: 5),
                Text(
                  "Time slot",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16.98),
                ),
                SizedBox(height: 9),
                ScrollViewHorizontal(items: [
                  for (var index in time) TimeSlotChoice(time: index)
                ]),
                SizedBox(height: 13),
                Text(
                  "Service",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16.98),
                ),
                SizedBox(height: 9),
                ScrollViewHorizontal(items: [OptionService(), OptionService()]),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      heroTag: "btnForward",
                      onPressed: () {
                        Get.toNamed("payment_screen");
                      },
                      elevation: 0,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(Icons.arrow_forward_ios_outlined),
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

class ChooseService extends StatefulWidget {
  const ChooseService({Key? key, required this.service}) : super(key: key);
  final List<ServiceModel> service;

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  double _price = 0;
  bool isSelect1 = true;
  bool isSelect2 = true;
  bool isSelect4 = true;
  bool isSelect3 = true;

  @override
  Widget build(BuildContext context) {
    Color gray164 = Color.fromARGB(255, 164, 164, 164);
    return Column(
      children: [
        Wrap(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () {
                if (isSelect1) {
                  setState(() {
                    isSelect1 = false;
                    _price += widget.service[0].servicePrice;
                  });
                } else {
                  setState(() {
                    isSelect1 = true;
                    _price -= widget.service[0].servicePrice;
                  });
                }
              },
              child: Container(
                width: 104,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(21.23)),
                  border: Border.all(
                    color: isSelect1 ? gray164 : Colors.black,
                    width: 2.1230454444885254,
                  ),
                ),
                child: Icon(
                  widget.service[0].serviceIcon,
                  color: isSelect1 ? gray164 : Colors.black,
                  size: 50,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (isSelect2) {
                  setState(() {
                    isSelect2 = false;
                    _price += widget.service[1].servicePrice;
                  });
                } else {
                  setState(() {
                    isSelect2 = true;
                    _price -= widget.service[1].servicePrice;
                  });
                }
              },
              child: Container(
                width: 104,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(21.23)),
                  border: Border.all(
                    color: isSelect2 ? gray164 : Colors.black,
                    width: 2.1230454444885254,
                  ),
                ),
                child: Icon(
                  widget.service[1].serviceIcon,
                  color: isSelect2 ? gray164 : Colors.black,
                  size: 50,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (isSelect3) {
                  setState(() {
                    isSelect3 = false;
                    _price += widget.service[2].servicePrice;
                  });
                } else {
                  setState(() {
                    isSelect3 = true;
                    _price -= widget.service[2].servicePrice;
                  });
                }
              },
              child: Container(
                width: 104,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(21.23)),
                  border: Border.all(
                    color: isSelect3 ? gray164 : Colors.black,
                    width: 2.1230454444885254,
                  ),
                ),
                child: Icon(
                  widget.service[2].serviceIcon,
                  color: isSelect3 ? gray164 : Colors.black,
                  size: 50,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (isSelect4) {
                  setState(() {
                    isSelect4 = false;
                    _price += widget.service[3].servicePrice;
                  });
                } else {
                  setState(() {
                    isSelect4 = true;
                    _price -= widget.service[3].servicePrice;
                  });
                }
              },
              child: Container(
                width: 104,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(21.23)),
                  border: Border.all(
                    color: isSelect4 ? gray164 : Colors.black,
                    width: 2.1230454444885254,
                  ),
                ),
                child: Icon(
                  widget.service[3].serviceIcon,
                  color: isSelect4 ? gray164 : Colors.black,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 17),
        Row(
          children: [
            Expanded(
              child: Text(
                "Price",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.23,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "$_price ฿",
              style: TextStyle(
                  color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}

class ScrollViewHorizontal extends StatelessWidget {
  const ScrollViewHorizontal({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 10,
        children: [
          for (var i in items) i,
        ],
      ),
    );
  }
}
