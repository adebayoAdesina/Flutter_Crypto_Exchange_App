import 'package:crypto_exchange/Widget/info.dart';
import 'package:flutter/material.dart';

import '../Colors/colors.dart';

class ListOfHistory extends StatelessWidget {
  final List<dynamic> cryptoHistory;
  const ListOfHistory({Key? key, required this.cryptoHistory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(cryptoHistory);
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: cryptoHistory.length,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundColor: cryptoHistory[i]['color'],
            child: Text(
              cryptoHistory[i]['type'].toString(),
              style: TextStyle(color: whiteColor),
            ),
          ),
          title: Text(cryptoHistory[i]['deduction'].toString()),
          subtitle: Text(cryptoHistory[i]['time'].toString()),
          trailing: Text('\$${cryptoHistory[i]['amount']}'),
        );
      },
    );
  }
}
