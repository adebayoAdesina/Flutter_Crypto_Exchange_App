import 'package:crypto_exchange/Colors/colors.dart';
import 'package:flutter/material.dart';

class MobileConnectedCards extends StatefulWidget {
  const MobileConnectedCards({ Key? key }) : super(key: key);

  @override
  State<MobileConnectedCards> createState() => _MobileConnectedCardsState();
}

class _MobileConnectedCardsState extends State<MobileConnectedCards> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: (() => {
            Navigator.pop(context)
          }),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(0.6)
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Connected Cards',
              textAlign:  TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: whiteColor,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 18,
                  ),
                  child: Text(
                    'Cards appears only after a  first payment',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}