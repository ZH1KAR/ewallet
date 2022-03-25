import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/line_chart_widgets.dart';
import 'package:flutter/material.dart';

class ChartStatistics extends StatefulWidget {
  const ChartStatistics({Key? key}) : super(key: key);

  @override
  State<ChartStatistics> createState() => _ChartStatisticsState();
}

class _ChartStatisticsState extends State<ChartStatistics> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [klightBlue, klightPurpule],
                tileMode: TileMode.clamp),
          ),
          child: ListView(children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: LineChartWidget(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
