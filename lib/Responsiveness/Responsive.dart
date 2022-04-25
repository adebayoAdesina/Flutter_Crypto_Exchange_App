import 'package:crypto_exchange/Screens/Mobile.dart';
import 'package:crypto_exchange/Screens/tablet.dart';
import 'package:crypto_exchange/Screens/windows.dart';
import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({ Key? key }) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const Mobile();
        }
        else if (constraints.maxWidth < 900) {
          return const Tablet();
        }
        else {
          return const Windows();
        }
      }
    );
  }
}