import 'dart:developer';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';

import 'package:wold_time/service/dateandTime.dart';
import 'package:flutter/material.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  String time = "loading";
  void setup() async{
      DateAndTime now = DateAndTime(location: "asia",img: "asia",url: "Argentina/Salta");
      await now.getdata();
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        'location':now.location,
        'time' : now.time,
        'img' : now.img,
        'isDay' : now.isDay,
      });
      
      
  }


  @override
  void initState(){
    super.initState();   
    setup();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        // backgroundColor: Colors.brown[300],
        
        body: Center(
          child: SpinKitChasingDots(
          color: Colors.amber,          
          size: 50.0,
          ),

        ),
      ),
    );
  }
}
