import 'package:auto_size_text/auto_size_text.dart';
import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/credit_card.dart';
import 'package:ewallet/widgets/home_prop_cards.dart';
import 'package:ewallet/widgets/monthly_log.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [klightBlue, klightPurpule],
            tileMode: TileMode.clamp),
      ),
      child: ListView(
        children: [
          CreditCard(),
          Row(
            children: [
              HomeCards(icon: Icons.import_contacts),
              HomeCards(icon: Icons.compare_arrows),
              HomeCards(icon: Icons.add_circle_outline),
              HomeCards(icon: Icons.shopping_basket),
            ],
          ),
          SizedBox(
            height: size.height * 0.2725,
            child: Card(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.all(10.0),
                children: [
                  AutoSizeText("This Month", style: kRobotoBlackBold),
                  MonthlyLog(
                      subtitleText: time.toString(),
                      titleText: 'WithdrawPay',
                      paymentNumber: "\$1500"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
