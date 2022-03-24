import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/login_widget.dart';
import 'package:ewallet/widgets/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const routeName = "/login";
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.lightbulb_outline),
            onPressed: () {},
            color: Colors.yellow,
          ),
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
        child: LoginWidget(),
      ),
    );
  }
}
