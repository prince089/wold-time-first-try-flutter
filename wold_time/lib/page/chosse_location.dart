

import 'package:flutter/material.dart';
import 'package:wold_time/service/dateandTime.dart';

class chosse_location extends StatefulWidget {
  @override
  _chosse_locationState createState() => _chosse_locationState();
}

class _chosse_locationState extends State<chosse_location> {
  List<DateAndTime> obj =[
    DateAndTime(location: "asia",img: "Flag-India.jpg",url: "Argentina/Salta"),
    DateAndTime(location: "asia",img: "Flag-India.jpg",url: "Argentina/Salta"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        title: Text('location'),
      ),
      body: ListView.builder(
        itemCount: obj.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){},
              title: Text(obj[index].location),
              leading: CircleAvatar(
                backgroundImage:AssetImage('asset/${obj[index].img}')
              )
            ),
          );
        },
        
      ),
    );
  }
}
