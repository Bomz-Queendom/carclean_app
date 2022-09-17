import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget searchBox() {
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(22.99), boxShadow: [
      BoxShadow(
        color: Color.fromARGB(50, 0, 0, 0),
        blurRadius: 5,
        offset: Offset(0, 2),
      )
    ]),
    height: 54,
    width: 464,
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 3.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(2),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 30, 6),
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
            color: Color.fromARGB(255, 39, 39, 39),
          ),
        ),
      ),
    ),
  );
}