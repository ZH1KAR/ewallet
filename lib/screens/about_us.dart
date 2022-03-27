import 'package:ewallet/constants.dart';
import 'package:ewallet/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
static  const routeName='/about_us';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Container(
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
              SizedBox(
                width: size.width,
        height: size.height-26,
                child: Card(
                  
                    color: klightPurpule.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
          
                ),
              ),
             
            ],
          ),
          ),
      ),
    );}}