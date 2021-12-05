import 'package:http/http.dart';
import 'dart:convert';
// import 'dart:js';
import 'package:intl/intl.dart';

class DateAndTime{
  String location;
  String url;
  String img;
  String time;
  bool isDay;

  DateAndTime({this.location,this.url,this.img});

  Future <void> getdata() async{
    try {
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/America/$url'));
    Map data = jsonDecode(response.body);
    
    String date = data['datetime'];
    int ofset = data['raw_offset'];
    DateTime now = DateTime.parse(date);
    now = now.add(Duration(hours:ofset));
    isDay = now.hour > 8 && now.hour< 20 ? true : false;

    time = DateFormat.jm().format(now);
  
  

  }
  catch (e) {
  time = "something went wrong !!";
}
  
} 
  
}