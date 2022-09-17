import 'package:carclean_app/components/historyList.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 111,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Overview",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11),
            child: Text(
              "My Wallet",
              style: TextStyle(fontSize: 16.73, fontWeight: FontWeight.bold),
            ),
          ),
          CardPayment(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Text(
              "History",
              style: TextStyle(fontSize: 16.73, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              "This month",
              style: TextStyle(fontSize: 16.73, fontWeight: FontWeight.bold),
            ),
          ),
          Historylist(
            title: "Durathan Car Service",
            subTitle: "27 Aug 2609",
            price: "250 ฿",
          )
        ],
      ),
    );
  }
}

class CardPayment extends StatelessWidget {
  const CardPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11.61),
      ),
      child: Container(
        width: 464,
        height: 79,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Wrap(
            spacing: 10,
            runAlignment: WrapAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.circlePlus,
                color: Colors.white,
              ),
              Text(
                "Add your credit card",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
