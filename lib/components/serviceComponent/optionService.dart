import 'package:flutter/material.dart';

class OptionService extends StatelessWidget {
  const OptionService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color gray164 = Color.fromARGB(255, 164, 164, 164);
    return Container(
      width: 104,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(21.23)),
        border: Border.all(
          color: gray164,
          width: 2.1230454444885254,
        ),
      ),
    );
  }
}