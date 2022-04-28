import 'package:crypto_exchange/Screens/mobile.dart';
import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class MobileHistory extends StatefulWidget {
  const MobileHistory({ Key? key }) : super(key: key);

  @override
  State<MobileHistory> createState() => _MobileHistoryState();
}

int selectedCoin = 0;
String received = '15,719.12';

class _MobileHistoryState extends State<MobileHistory> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Container(
                color: backgroundColor,
                height: size.height * 0.38,
                width: size.width,
              )
            ),
            Positioned(
              child: Container(
                color: mainColor,
                height: size.height * 0.36,
                width: size.width,
                
              
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 55,
                        left: 8,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => const Mobile()));
                            }, 
                            icon: const Icon(
                              Icons.arrow_back_rounded,
                              color: whiteColor,
                              size: 28,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.80,
                            child: const Text(
                              'History',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                              
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (() {
                            setState(() {
                              selectedCoin = 0;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ALL',
                              style: TextStyle(
                                color: selectedCoin == 0 ? whiteColor : greyColor
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              selectedCoin = 1;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'BTC',
                              style: TextStyle(
                                color: selectedCoin == 1 ? whiteColor : greyColor
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              selectedCoin = 2;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ETH',
                              style: TextStyle(
                                color: selectedCoin == 2 ? whiteColor : greyColor
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              selectedCoin = 3 ;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'LTC',
                              style: TextStyle(
                                color: selectedCoin == 3 ? whiteColor : greyColor
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
            Positioned(
              top: size.height*0.385,
              child: Container(
                color: whiteColor,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 8,
                    right: 8,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // TextField(
                          //   decoration: InputDecoration(
                          //     hintText: 'Search...',
                          //     fillColor: greyColor,
                          //     filled: true,
                          //     focusColor: greyColor,
                          //     border: OutlineInputBorder(
                          //       borderSide: BorderSide(
                          //         width: 0,
                          //         style: BorderStyle.none,
                          //         color: greyColor
                          //       )
                          //     )
                          //   ),
                          // ),
                          Container(
                            decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: IconButton(
                              color: whiteColor,
                              onPressed: (){}, 
                              icon: Icon(
                                Icons.search,
                              )
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
            ),
            Positioned(
              top: size.height*0.25,
              left: size.width* 0.05,
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.16,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: receiveColorButton,
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 26,
                                  left: 13
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Recieved',
                                      style: TextStyle(
                                        color: greyColor
                                      ),
                                    ),
                                    Text(
                                      received,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: sentColorButton,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 26,
                                  left: 13
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Sent',
                                      style: TextStyle(
                                        color: greyColor
                                      ),
                                    ),
                                    Text(
                                      received,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}