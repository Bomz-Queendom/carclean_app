import 'package:carclean_app/components/CustomAppbar.dart';
import 'package:carclean_app/components/CustomListItem.dart';
import 'package:carclean_app/screens/ProfileScreen.dart';
import 'package:carclean_app/screens/home.dart';
import 'package:carclean_app/screens/recentScreen.dart';
import 'package:carclean_app/screens/walletScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color gray125 = Color.fromARGB(255, 125, 125, 125);
  final _tabs = [Home(), RecentScreen(), WalletScreen(), ProfileScreen()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _appBar = [CustomAppBar(context), null, null, null];
    return Scaffold(
      appBar: _appBar[_currentIndex],
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Home.png")),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Recent.png")),
              label: "Recent"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Wallet.png")),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/Profile.png")),
              label: "Profile")
        ],
        currentIndex: _currentIndex,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        iconSize: 44,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w900, fontSize: 9.45),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
