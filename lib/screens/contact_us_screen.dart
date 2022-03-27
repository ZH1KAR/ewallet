import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Contactus extends StatelessWidget {
static  const routeName='/contacts_us';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
  drawer: DrawerWidget(),
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
        child: ListView(
          children:[
             Card(
              color: klightPurpule.withOpacity(0.1),
              
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('hdh'),
                subtitle: Text('gsd'),
              ),
            )
          ]
        ),
        ),

    );}}