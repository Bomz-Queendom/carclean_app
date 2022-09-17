import 'package:flutter/material.dart';

class SignoutBtn extends StatelessWidget {
  const SignoutBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Sign Out",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          onTap: () {},
          visualDensity: VisualDensity(vertical: 3),
        ),
        SizedBox(
          height: 1.4,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
            ),
          ),
        ),
      ],
    );
  }
}
