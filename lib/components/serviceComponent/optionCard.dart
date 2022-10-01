import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  const OptionCard({Key? key, required this.serviceIcon}) : super(key: key);

  final IconData serviceIcon;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    Color gray164 = Color.fromARGB(255, 164, 164, 164);
    return GestureDetector(
      onTap: () {
        if (isSelect) {
          setState(() {
            isSelect = false;
          });
        } else {
          setState(() {
            isSelect = true;
          });
        }
      },
      child: Container(
        width: 104,
        height: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(21.23)),
          border: Border.all(
            color: isSelect ? gray164 : Colors.black,
            width: 2.1230454444885254,
          ),
        ),
        child: Icon(
          widget.serviceIcon,
          color: isSelect ? gray164 : Colors.black,
          size: 50,
        ),
      ),
    );
  }
}
