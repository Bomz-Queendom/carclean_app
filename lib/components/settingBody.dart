import 'package:flutter/material.dart';
import 'settingList.dart';
import 'signoutBtn.dart';

class settingBody extends StatelessWidget {
  const settingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingList(
          title: "Change Password",
          screenName: "change_password_screen",
        ),
        SettingList(
          title: "Support",
          screenName: "support_screen",
        ),
        SizedBox(
          height: 8 - 1.4,
          width: MediaQuery.of(context).size.width,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 217, 217),
            ),
          ),
        ),
        SignoutBtn()
      ],
    );
  }
}
