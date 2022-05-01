import 'package:crypto_exchange/Colors/colors.dart';
import 'package:flutter/material.dart';

class ConnectedCardWidget extends StatefulWidget {
  const ConnectedCardWidget({ Key? key }) : super(key: key);

  @override
  State<ConnectedCardWidget> createState() => _ConnectedCardWidgetState();
}

class _ConnectedCardWidgetState extends State<ConnectedCardWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [ 
              Container(
                width: size.width*0.9,
                height: 220,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius:  20,
                      // offset: Offset(3,7)
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    right: 15
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.assessment_sharp,
                            color: whiteColor,
                            size: 30,
                          ),
                          Icon(
                            Icons.calendar_view_day,
                            color: Colors.red,
                            size: 30,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_rate,
                              color: whiteColor,
                              size: 15,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '8102',
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Michael Scott',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 19
                                ),
                            ),
                            Text(
                              '06/23',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 19
                                ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: size.width*0.35,
                top: 190,
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(
                      Icons.delete_sweep_outlined,
                      color: greyColor,
                      size: 28,
                    ),
                  ),
                ),
              )
            ]
          ),
        ],
      ),
    );
  }
}