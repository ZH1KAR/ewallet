import 'package:ewallet/constants.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  List<Data>? _chartData;
  TooltipBehavior? _tooltipBehavior;

  final List<Color> gradient = [
    Color(0xFFFFFFFF),
    Color(0xFFF7AA00),
  ];

  List<Data> getChartData() {
    final List<Data> chartData = [
      Data(year: 2018, sale: 23),
      Data(year: 2019, sale: 12),
      Data(year: 2020, sale: 18),
      Data(year: 2021, sale: 8),
      Data(year: 2022, sale: 30),
    ];
    return chartData;
  }

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      backgroundColor: Colors.transparent,
      tooltipBehavior: _tooltipBehavior,
      title: ChartTitle(
        text: "Monthly Report",
        textStyle: kRoboto,
      ),
      borderColor: Colors.transparent,
      legend: Legend(isVisible: true, isResponsive: true),
      series: <ChartSeries<Data, num>>[
        ColumnSeries(
          borderGradient: LinearGradient(colors: gradient),
          gradient: LinearGradient(colors: gradient),
          borderWidth: 0,
          borderColor: Colors.transparent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
          name: "Line",
          dataSource: _chartData!,
          xValueMapper: (Data sales, _) => sales.year,
          yValueMapper: (Data sales, _) => sales.sale,
        ),
      ],
      primaryXAxis: NumericAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: MajorGridLines(width: 0),
        axisLine: AxisLine(width: 0),
      ),
      plotAreaBorderWidth: 0,
      primaryYAxis: NumericAxis(
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        numberFormat: NumberFormat.compactCurrency(
            locale: "en_Iraq",
            name: "Iraqi Dinar",
            decimalDigits: 0,
            symbol: "IQD"),
      ),
    );
  }
}

class Data {
  num? year;
  num? sale;
  // double get years {
  //   return year;
  // }

  // double get sales {
  //   return sale;
  // }

  Data({required this.year, required this.sale});
}
