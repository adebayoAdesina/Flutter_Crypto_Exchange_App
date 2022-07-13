import 'package:crypto_exchange/Widget/calender.dart';
import 'package:flutter/material.dart';

class PeriodPage extends StatefulWidget {
  const PeriodPage({ Key? key }) : super(key: key);

  @override
  State<PeriodPage> createState() => _PeriodPageState();
}

class _PeriodPageState extends State<PeriodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Calender(),
    );
  }
}