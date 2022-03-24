import 'package:auto_size_text/auto_size_text.dart';
import 'package:ewallet/constants.dart';
import 'package:flutter/material.dart';

class MonthlyLog extends StatelessWidget {
  const MonthlyLog({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    required this.paymentNumber,
  }) : super(key: key);
  final String titleText;
  final String subtitleText;
  final String paymentNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: AutoSizeText(
            titleText,
            style: kRobotoBlackBold,
          ),
          subtitle: AutoSizeText(subtitleText, style: kRobotoTextField),
          leading: Icon(Icons.wallet_membership_outlined),
          trailing: AutoSizeText(
            paymentNumber.toString(),
            style: kRobotoBlackBold,
          ),
        ));
  }
}
