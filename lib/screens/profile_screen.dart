import 'package:ewallet/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,

     Size size = MediaQuery.of(context).size;
    return Container(
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
          Row(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: 60,
                ),
              ),
              Expanded(
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      hintText: 'zh',
                      hintStyle: TextStyle(
                        letterSpacing: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white30,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                  hintText: 'zh',
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.white30,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                  hintText: 'zh',
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.white30,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                  hintText: 'zh',
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.white30,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                  hintText: 'zh',
                  hintStyle: TextStyle(
                    letterSpacing: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.white30,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none)),
            ),
          ),

       
        children: [
          
          Row(
            
            
            children: [
                Expanded(
                child: CircleAvatar(
                  
                  radius: 60,
                
                ),
              ),
              
              Expanded(
            
         child: TextField(
            enabled: false,
        decoration: InputDecoration(
            hintText: 'zh',
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
      ),
            
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
         child: TextField(
            enabled: false,
        decoration: InputDecoration(
            hintText: 'zh',
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
      ),
       Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
         child: TextField(
            enabled: false,
        decoration: InputDecoration(
            hintText: 'zh',
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
      ),
       Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
         child: TextField(
            enabled: false,
        decoration: InputDecoration(
            hintText: 'zh',
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
      ),
       Container(
            margin: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
         child: TextField(
            enabled: false,
        decoration: InputDecoration(
            hintText: 'zh',
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white30,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
      ),
     


        ],
      ),
    );
  }
}
