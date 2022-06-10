import 'package:crypto_exchange/Model/walletInfo_model.dart';
import 'package:crypto_exchange/Screens/mobile.dart';
import 'package:crypto_exchange/Widget/wallet_widget.dart';
import 'package:flutter/material.dart';

import '../../Colors/colors.dart';
import '../../Widget/snapBar.dart';

class MobileHistory extends StatefulWidget {
  const MobileHistory({Key? key}) : super(key: key);

  @override
  State<MobileHistory> createState() => _MobileHistoryState();
}

class _MobileHistoryState extends HistoryPageFunc {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Container(
              //   height: size.height * 2,
              // ),
              Container(
                color: backgroundColor,
                height: size.height * 0.38,
                width: size.width,
              ),
              Container(
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Mobile()));
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
                                  fontWeight: FontWeight.w400),
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
                                  color: selectedCoin == 0
                                      ? whiteColor
                                      : greyColor),
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
                                  color: selectedCoin == 1
                                      ? whiteColor
                                      : greyColor),
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
                                  color: selectedCoin == 2
                                      ? whiteColor
                                      : greyColor),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (() {
                            setState(() {
                              selectedCoin = 3;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'LTC',
                              style: TextStyle(
                                  color: selectedCoin == 3
                                      ? whiteColor
                                      : greyColor),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  color: whiteColor,
                  width: size.width,
                  margin: EdgeInsets.only(top: size.height * 0.385),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      left: 8,
                      right: 8,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (() => historyPeriodSnapBar(context)),
                              child: Container(
                                width: size.width * 0.62,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Export history',
                                      style: TextStyle(
                                          color: greyColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: greyColor),
                                  borderRadius: BorderRadius.circular(50)),
                              child: IconButton(
                                  color: whiteColor,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.search,
                                    color: greyColor,
                                  )),
                            )
                          ],
                        ),
                        ListView.builder(
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: walletInfo.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              WalletInfoModel walletInfos = walletInfo[index];
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${walletInfos.date}, ${walletInfos.year}',
                                      style: const TextStyle(
                                          color: greyColor, fontSize: 18),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  ListOfHistory(
                                      cryptoHistory: walletInfos.crypto)
                                ],
                              );
                            })
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(
                  top: size.height * 0.25,
                  left: size.width * 0.05,
                ),
                width: size.width * 0.9,
                height: size.height * 0.16,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: greyColor, blurRadius: 10)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                  padding:
                                      const EdgeInsets.only(top: 26, left: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Recieved',
                                        style: TextStyle(color: greyColor),
                                      ),
                                      Text(
                                        received,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
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
                                  padding:
                                      const EdgeInsets.only(top: 26, left: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Sent',
                                        style: TextStyle(color: greyColor),
                                      ),
                                      Text(
                                        received,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
