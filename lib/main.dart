import 'package:ewallet/constants.dart';
import 'package:ewallet/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-wallet',
      theme: ThemeData(
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: klightBlue,
            onPrimary: Colors.black,
            secondary: kYellow,
            onSecondary: klightBlue,
            error: Colors.red,
            onError: kYellow,
            background: klightBlue,
            onBackground: klightPurpule,
            surface: klightBlue,
            onSurface: klightPurpule),
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
