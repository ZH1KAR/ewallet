import 'package:auto_size_text/auto_size_text.dart';
import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/credit_card.dart';
import 'package:ewallet/widgets/home_prop_cards.dart';
import 'package:ewallet/widgets/monthly_log.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.transparent,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: const CircleAvatar(
                radius: 20,
              ),
            )
          ],
          backgroundColor: klightBlue),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [klightBlue, klightPurpule],
              tileMode: TileMode.clamp),
        ),
        child: Column(
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
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: klightBlue,
                ),
                label: "home",
                activeIcon: Icon(
                  Icons.home_filled,
                  color: klightBlue,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_chart_outlined,
                  color: klightBlue,
                ),
                label: "Statistics",
                activeIcon: Icon(
                  Icons.insert_chart,
                  color: klightBlue,
                )),
          ],
        ),
      ),
    );
  }
}
