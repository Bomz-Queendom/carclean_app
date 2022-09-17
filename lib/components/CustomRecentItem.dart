import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

class CustomRecentItem extends StatelessWidget {
  const CustomRecentItem({
    Key? key,
    required this.title,
    required this.subTile,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String subTile;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Color blue = Theme.of(context).primaryColor;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(11),
          child: Text(
            "Recent Items",
            style: TextStyle(
                fontSize: 17.7, fontWeight: FontWeight.bold, color: textColor),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            maxRadius: 40,
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.49),
          ),
          subtitle: Text(
            subTile,
            style: TextStyle(fontSize: 11.06),
          ),
          onTap: () {},
          isThreeLine: true,
          trailing: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Wrap(
              spacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  "Book again",
                  style: TextStyle(
                      color: blue, fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: FloatingActionButton.small(
                    onPressed: () {},
                    elevation: 0,
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      color: blue,
                      size: 18,
                    ),
                    backgroundColor: Color.fromARGB(47, 118, 184, 250),
                  ),
                )
              ],
            ),
          ),
          visualDensity: VisualDensity(vertical: 3),
        )
      ],
    );
  }
}
