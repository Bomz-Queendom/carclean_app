import 'package:carclean_app/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    const Color gray125 = Color.fromARGB(255, 125, 125, 125);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 102,
        title: Text(
          "Setting",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        bottom: PreferredSize(
          child: ProfileCard(),
          preferredSize: Size(MediaQuery.of(context).size.width, 102),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '  Current password',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: gray125,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "forgot password?",
                  style: TextStyle(
                    color: gray125,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: '  new password',
              labelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: gray125,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 27),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '  confirm password',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: gray125,
                ),
              ),
            ),
          ),
          actionBtn(gray125: gray125)
        ],
      ),
    );
  }
}

class actionBtn extends StatelessWidget {
  const actionBtn({
    Key? key,
    required this.gray125,
  }) : super(key: key);

  final Color gray125;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "Cancel",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.62),
            ),
            minimumSize: Size(224, 55),
            primary: gray125,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "Save",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.62),
            ),
            minimumSize: Size(224, 55),
            primary: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
