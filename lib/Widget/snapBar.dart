import 'package:flutter/material.dart';

import '../Views/MobileViews/mobile_history.dart';

abstract class HistoryPageFunc extends State<MobileHistory> {
  int selectedCoin = 0;
  String received = '15,719.12';

  historyPeriodSnapBar(context) {
    var size = MediaQuery.of(context).size;
    Stack(
      children: [
        Container(
          color: Colors.black.withOpacity(0.1),
          width: size.width,
          height: size.height,
        )
      ],
    );
  }
}
