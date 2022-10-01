import 'package:carclean_app/components/settingBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _body = [settingBody()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
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
            preferredSize: Size(MediaQuery.of(context).size.width, 102)),
      ),
      body: _body[_currentIndex],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 102,
      child: ListTile(
        leading: Image.asset(
          "assets/images/Profile.png",
          height: 60,
          width: 60,
        ),
        title: Text(
          "Hello",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
        ),
        subtitle: Text(
          "Sulfer Merlinmorph",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 20, color: Colors.white),
        ),
        trailing: IconButton(
          iconSize: 42,
          onPressed: () => Get.toNamed("edit_profile_screen"),
          icon: SvgPicture.asset(
            "assets/icons/Edit-user.svg",
          ),
        ),
      ),
    );
  }
}
