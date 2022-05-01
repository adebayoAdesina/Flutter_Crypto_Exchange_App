import 'dart:async';

import 'package:crypto_exchange/Views/MobileViews/mobile_connected_cards.dart';
import 'package:crypto_exchange/Widget/keyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../Colors/colors.dart';
import '../../Screens/mobile.dart';

class MobileAddCard extends StatefulWidget {
  const MobileAddCard({ Key? key }) : super(key: key);

  @override
  State<MobileAddCard> createState() => _MobileAddCardState();
}

class _MobileAddCardState extends State<MobileAddCard> {
  final RoundedLoadingButtonController _btncontroller = RoundedLoadingButtonController();

  void _connectCard() {
    Timer(
      const Duration(seconds: 3), 
      () {
        _btncontroller.success();
        Timer(const Duration(seconds: 1), () 
        {
          Navigator.pop(context);
        
          _btncontroller.reset();
        });
      }
    );
  }

  // final int _cardNumber = 3;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              color: mainColor,
              height: size.height * 0.49,
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
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: whiteColor,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.75,
                          child: const Text(
                            'Add Card',
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Card number',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: whiteColor.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      onTap: (() {
                                        
                                      }),
                                      keyboardType: TextInputType.none,
                                      decoration: const InputDecoration(
                                        hoverColor: greyColor,
                                        fillColor: whiteColor,
                                        filled: true
                                      ),
                                      
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: whiteColor,
                                      height: 48,
                                      child: const Icon(
                                        Icons.calendar_view_day,
                                        color: Colors.red,
                                      )
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Expiry date',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: whiteColor.withOpacity(0.9),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const TextField(
                                      keyboardType: TextInputType.none,
                                      decoration: InputDecoration(
                                        hoverColor: greyColor,
                                        fillColor: whiteColor,
                                        filled: true
                                      ),
                                    
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 6,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'CVV',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: whiteColor.withOpacity(0.9),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const TextField(
                                      keyboardType: TextInputType.none,
                                      decoration: InputDecoration(
                                        hoverColor: greyColor,
                                        fillColor: whiteColor,
                                        filled: true
                                      ),
                                    
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height*0.55,
            left: size.width*0.01,
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 0,
                        top: 3
                      ),
                      child: keyboard(1,'', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 3
                      ),
                      child: keyboard(2,'ABC', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 8,
                        top: 3
                      ),
                      child: keyboard(3,'DEF', size.width),
                    )
                  ],
                ),
                Row(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 0,
                        top: 8
                      ),
                      child: keyboard(4,'GHI', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard(5,'JKL', size.width),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard(6,'PQRS', size.width),
                    )
                  ],
                ),
                Row(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 0,
                        top: 8
                      ),
                      child: keyboard(7,'GHI', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard(8,'TUV', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard(9,'WXYZ', size.width),
                    )
                  ],
                ),
                Row(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 0,
                        top: 8
                      ),
                      child: keyboard('','', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard(0,'', size.width),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                        right: 8,
                        top: 8
                      ),
                      child: keyboard('Icon','', size.width),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: size.height*0.445,
            left: size.width* 0.05,
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.085,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    // offset: Offset(3,7)
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.qr_code_scanner,
                      color: greyColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Use camera to scan card info',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ]
                ),
              ),
            )
          )

        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RoundedLoadingButton(
          controller: _btncontroller, 
          onPressed: _connectCard, 
          width: size.width * 0.95,
          child: const Text(
            'Connect Card',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300
            ),
          ),
          color: deepGreyColor,
          successColor: Colors.green,
        ),
      )
      
    );
  }
}