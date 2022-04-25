import 'package:flutter/material.dart';

class MobileProfile extends StatefulWidget {
  const MobileProfile({ Key? key }) : super(key: key);

  @override
  State<MobileProfile> createState() => _MobileProfileState();
}

class _MobileProfileState extends State<MobileProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('World'),
    );
  }
}