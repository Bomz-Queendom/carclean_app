import 'package:carclean_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Color blue84 = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: blue84,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: FloatingActionButton(
            elevation: 1,
            backgroundColor: Colors.white,
            onPressed: () {
              Get.toNamed("main_screen");
            },
            child: Icon(
              FontAwesomeIcons.angleLeft,
              color: textColor,
            ),
          ),
        ),
        title: Text(
          "Edit Profiles",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Save",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          )
        ],
        bottom: PreferredSize(
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Image.asset(
                      "assets/images/Profile.png",
                      height: 145.4,
                      width: 145.4,
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 10,
                    child: Icon(
                      FontAwesomeIcons.camera,
                      size: 26,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 301 - 130)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
        child: Column(children: [
          TextFormField(
            onTap: () {},
            initialValue: "Sulfer Merlinmorph",
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              labelText: "Fullname",
            ),
          ),
          TextFormField(
            onTap: () {},
            initialValue: "Sulfer.M@gmail.com",
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              labelText: "Email",
            ),
          ),
          TextFormField(
            onTap: () {},
            initialValue: "(+66)63 218 7786",
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              labelText: "Phone",
            ),
          )
        ]),
      ),
    );
  }
}
