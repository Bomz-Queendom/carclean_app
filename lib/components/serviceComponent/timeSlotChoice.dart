import 'package:flutter/material.dart';

class TimeSlotChoice extends StatefulWidget {
  const TimeSlotChoice({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  State<TimeSlotChoice> createState() => _TimeSlotChoiceState();
}

class _TimeSlotChoiceState extends State<TimeSlotChoice> {
  Color gray125 = Color.fromRGBO(125, 125, 125, 1);
  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelect) {
            setState(() {
              isSelect = false;
            });
          } else {
            setState(() {
              isSelect = true;
            });
          }
        });
      },
      child: Card(
        color: isSelect ? Colors.white : Theme.of(context).primaryColor,
        child: SizedBox(
          //width: 91.88,
          height: 26.4,
          child: Align(
            alignment: Alignment.center,
            widthFactor: 1.2,
            child: Text(
              widget.time,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelect ? gray125 : Colors.white,
                fontSize: 12.738274574279785,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.23),
          side: BorderSide(
            color: isSelect ? gray125 : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
