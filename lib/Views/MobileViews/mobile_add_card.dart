import 'package:crypto_exchange/Widget/keyboard_widget.dart';
import 'package:flutter/material.dart';

import '../../Colors/colors.dart';
import '../../Screens/mobile.dart';

class MobileAddCard extends StatefulWidget {
  const MobileAddCard({ Key? key }) : super(key: key);

  @override
  State<MobileAddCard> createState() => _MobileAddCardState();
}

class _MobileAddCardState extends State<MobileAddCard> {
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => const Mobile()));
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
                                children: const [
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hoverColor: greyColor,
                                        fillColor: whiteColor,
                                        filled: true
                                      ),
                                      
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hoverColor: greyColor,
                                          fillColor: whiteColor,
                                          filled: true
                                        ),
                                    ),
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
                                      keyboardType: TextInputType.number,
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
                                      keyboardType: TextInputType.number,
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
                borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
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
                        fontSize: 17,
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
    );
  }
}