import 'package:flutter/material.dart';

class Historylist extends StatelessWidget {
  const Historylist({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.price,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(
        AssetImage("assets/icons/Car-wash-icon.png"),
        size: 52,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 164, 164, 164)),
      ),
      trailing: Text(
        price,
        style: TextStyle(fontSize: 18.58, fontWeight: FontWeight.w500),
      ),
      onTap: () {},
    );
  }
}
