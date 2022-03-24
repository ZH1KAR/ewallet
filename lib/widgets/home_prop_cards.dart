import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.25,
      height: size.height * 0.2,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(8),
        color: Color(0XFF867AE9),
        child: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
