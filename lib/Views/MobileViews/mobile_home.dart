

import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({ Key? key }) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

String data = '27,812';
String btcdata = '13,892.12';
String btcsubdata = '0.028195';
String btcpercentage = '4.62';
bool _isWallets = true;

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: mainColor,
              height: size.height * 0.38,
              width: size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Icon(
                                  Icons.attach_money_rounded,
                                  color: whiteColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                data,
                                style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700
                                
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: transparentMainColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(19.0),
                                child: Icon(
                                  Icons.call_received,
                                  color: whiteColor,
                                  size: 25,
                                ),
                              ),
                      
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              child: Text(
                                'Receive',
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: transparentMainColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(19.0),
                                child: Icon(
                                  Icons.call_made,
                                  color: whiteColor,
                                  size: 25,
                                ),
                              ),
                      
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              child: Text(
                                'Send',
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: transparentMainColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(19.0),
                                child: Icon(
                                  Icons.price_change_outlined,
                                  color: whiteColor,
                                  size: 25,
                                ),
                              ),
                      
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              child: Text(
                                'Exchange',
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      ),


                      InkWell(
                        onTap: (() {
                          
                        }),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: transparentMainColor,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(19.0),
                                child: Icon(
                                  Icons.money,
                                  color: whiteColor,
                                  size: 25,
                                ),
                              ),
                      
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 8
                              ),
                              child: Text(
                                'Cash out',
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              color: whiteColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 8
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (() {
                        setState(() {
                          _isWallets = true;
                        });
                      }),
                      child: Expanded(
                        flex: 6,
                        child: Text(
                          'My wallets',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: (_isWallets == true) ? Colors.black : greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal
                          ),
                        )
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        setState(() {
                          _isWallets = false;
                        });
                      }),
                      child: Expanded(
                        flex: 6,
                        child: Text(
                          'Empty wallets',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: (_isWallets != true) ? Colors.black : greyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(
                top: 2
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10
                ),
                tileColor: whiteColor,
                leading: const CircleAvatar(
                  radius: 26,
                  backgroundColor: btcColor,
                  child: Text(
                    'BTC',
                    style: TextStyle(
                      color: whiteColor
                    ),
                  ),
                ),
                title: Text(
                  btcdata
                ),
                subtitle: Text(
                  btcsubdata
                ),
                trailing: Column(
                  children: [
                    Icon(Icons.keyboard_arrow_down_rounded,
                    size: 6,
                    ),
                    Text(
                      '$btcpercentage %'
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}