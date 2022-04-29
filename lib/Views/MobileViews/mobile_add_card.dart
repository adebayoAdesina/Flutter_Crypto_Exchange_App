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
              height: size.height * 0.52,
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
                          width: size.width * 0.78,
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
                                height: 15,
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
                            height: 30,
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
            top: size.height*0.6,
            left: size.width*0.01,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Keyboard(1,'', size.height, size.width),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Keyboard(2,'ABC', size.height, size.width),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Keyboard(3,'DEF', size.height, size.width),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: size.height*0.48,
            left: size.width* 0.05,
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.09,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(6)
              ),
            )
          )

        ],
      ),
    );
  }
}