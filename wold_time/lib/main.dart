 

import 'package:flutter/material.dart';
import 'package:wold_time/page/home.dart';
import 'package:wold_time/page/chosse_location.dart';
import 'package:wold_time/page/loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: loading()
    initialRoute: '/',
    routes:{
      '/' :(context) => loading(),
      '/home' :(context)=>Home(),
      '/location':(context)=>chosse_location(),
    },

  ));
}

