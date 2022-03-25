import 'package:ewallet/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import "package:syncfusion_flutter_charts/charts.dart";
import 'package:intl/intl.dart';

class LineChartWidget extends StatefulWidget {
  LineChartWidget({Key? key}) : super(key: key);

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  // List<SalesData>? _chartData;
  TooltipBehavior? _tooltipBehavior;

  final List<Color> gradient = [
    Color(0xFFFFFFFF),
    Color(0xFFF7AA00),
  ];

  // List<Data> getChartData() {
  //   final List<SalesData> chartData = [
  //     Data(id:0,name:),
  //     Data(year: 2018, sale: 23),
  //     Data(year: 2019, sale: 12),
  //     Data(year: 2020, sale: 18),
  //     Data(year: 2021, sale: 8),
  //     Data(year: 2022, sale: 30),
  //   ];
  //   return chartData;
  // }

  @override
  void initState() {
    // _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return SfCartesianChart(
    //     title: ChartTitle(
    //       text: "Monthly Report",
    //       textStyle: kRoboto,
    //     ),
    //     legend: Legend(isVisible: true, isResponsive: true),
    //     series: <ChartSeries<SalesData, num>>[
    //       LineSeries(
    //         name: "Line",
    //         dataSource: _chartData!,
    //         xValueMapper: (SalesData sales, _) => sales.year,
    //         yValueMapper: (SalesData sales, _) => sales.sale,
    //       ),
    //     ],
    //     primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
    //     primaryYAxis: NumericAxis(
    //         numberFormat: NumberFormat.compactCurrency(
    //             locale: "en_Iraq",
    //             name: "Iraqi Dinar",
    //             decimalDigits: 0,
    //             symbol: "IQD")));
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 12,
        minY: 0,
        maxY: 10,
        titlesData: LineData.getTitleData(),
        gridData: FlGridData(
          // show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: klightBlue.withOpacity(0.3),
              strokeWidth: 1,
            );
          },
          drawVerticalLine: true,
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: klightBlue.withOpacity(0.1),
              strokeWidth: 1,
            );
          },
        ),
        borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: klightBlue.withOpacity(0.1),
              width: 0.1,
            )),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 8),
              FlSpot(2, 1),
              FlSpot(3, 2),
              FlSpot(4, 4),
              FlSpot(5, 9),
              FlSpot(6, 12),
            ],
            isCurved: true,
            colors: gradient,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: true,
              colors: gradient
                  .map(
                    (e) => e.withOpacity(0.15),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

// class SalesData {
//   num? year;
//   num? sale;
//   // double get years {
//   //   return year;
//   // }

//   // double get sales {
//   //   return sale;
//   // }

//   SalesData({required this.year, required this.sale});
// }
class LineData {
  static getTitleData() => FlTitlesData(
        show: true,
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(
          showTitles: false,
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (ctx, _) => kRobotoChart,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return "Jan";
              case 4:
                return "Feb";

              case 6:
                return "March";
            }
            return "";
          },
          margin: 8,
        ),
      );
}

class Data {
  final int id;
  final String name;
  final double y;

  Data({required this.id, required this.name, required this.y});
}
