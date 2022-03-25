import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class LogData {
  final String userId;
  final String transductionId;
  final IconData icon;
  final String title;
  final String subTitle;
  final DateTime dateAndTime;
  final double payment;
  final String location;

  LogData({
    required this.userId,
    required this.transductionId,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.dateAndTime,
    required this.payment,
    required this.location,
  });
}

class LogItems with ChangeNotifier {
  Map<String, LogData> _logs = {};

  Map<String, LogData> get logs {
    return {..._logs};
  }
}
