// import 'package:crypto_exchange/Widget/info.dart';
// import 'package:flutter/material.dart';

// import '../Colors/colors.dart';

// class WalletHistory extends StatelessWidget {
//   const WalletHistory({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: walletHistory.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//                 contentPadding: const EdgeInsets.symmetric(
//                   vertical: 20,
//                   horizontal: 10
//                 ),
//                 tileColor: whiteColor,
//                 leading: CircleAvatar(
//                   radius: 26,
//                   backgroundColor: btcColor,
//                   child: Text(
//                     walletHistory[index]['crypto'].toString(),
//                     style: const TextStyle(
//                       color: whiteColor
//                     ),
//                   ),
//                 ),
//                 title: Text(
                  
//                 ),
//                 subtitle: Text(
//                   btcsubdata
//                 ),
//                 trailing: Padding(
//                   padding: const EdgeInsets.only(
//                     top: 8
//                   ),
//                   child: Column(
//                     children: [
//                       Text(
//                         '$btcpercentage %'
//                       ),
//                       const Icon(
//                         Icons.keyboard_arrow_down_rounded,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//       }
//     );
//   }
// }