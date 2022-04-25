import 'package:crypto_exchange/Colors/colors.dart';
import 'package:crypto_exchange/Views/MobileViews/mobile_history.dart';
import 'package:crypto_exchange/Views/MobileViews/mobile_home.dart';
import 'package:crypto_exchange/Views/MobileViews/mobile_profile.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({ Key? key }) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

List<Widget> pageView = const [
  MobileHome(),
  MobileHistory(),
  MobileProfile()
];

  int currentState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageView[currentState],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh_outlined),
            label: 'History'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
        currentIndex: currentState,
        onTap: onItemTap,
        selectedItemColor: mainColor,
      ),
    );
  }

  void onItemTap(int value) {
    setState(() {
      currentState = value;
    });
  }
}