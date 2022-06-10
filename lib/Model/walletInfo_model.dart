import '../Colors/colors.dart';
import 'crypto_model.dart';

class WalletInfoModel {
  String? date;
  String? year;
  List<dynamic> crypto;

  WalletInfoModel({
    this.date,
    this.year,
    required this.crypto,
  });
}

// List<CryptoModel> crypto = [
//   CryptoModel(
//     type: 'LTC',
//     color: btcColor,
//     time: '19:53',
//     deduction: '-0.95',
//     amount: '60',
//   ),
//   CryptoModel(
//     type: 'LTC',
//     color: btcColor,
//     time: '19:53',
//     deduction: '-0.95',
//     amount: '60',
//   )
// ];

List<WalletInfoModel> walletInfo = [
  WalletInfoModel(date: '29 May', year: ' 2022', crypto: [
    {
      'type': 'LTC',
      'color': greyColor,
      'time': '19:53',
      'deduction': '-0.95',
      'amount': '60',
    },
    {
      'type': 'BTC',
      'color' : btcColor,
      'time': '13:25',
      'deduction': '-0.004',
      'amount': '50',
    },
    {
      'type': 'ETH',
      'color' : ethColor,
      'time': '19:53',
      'deduction': '-0.535464',
      'amount': '100',
    }
  ]),
  WalletInfoModel(date: '13 May', year: ' 2022', crypto: [
    {
      'type': 'LTC',
      'color': greyColor,
      'time': '19:50',
      'deduction': '-0.95',
      'amount': '60',
    },
    {
      'type': 'ETH',
      'color': ethColor,
      'time': '19:53',
      'deduction': '-0.535464',
      'amount': '100',
    },
    {
      'type': 'BTC',
      'color': btcColor,
      'time': '13:50',
      'deduction': '-0.004',
      'amount': '50',
    },
    
  ])
];
