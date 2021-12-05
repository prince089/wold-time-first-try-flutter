

import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ;
  

  @override
  Widget build(BuildContext context) {
    
    data = ModalRoute.of(context).settings.arguments;
    String bgColor = data['isDay'] ? "day.jpg" :"night.jpg" ;
    //log(data.toString());
    return SafeArea(
      child: Scaffold(
        
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/$bgColor'),
          fit:BoxFit.cover,
        )
      ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
            child: Column(
              children: [
                FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(
                    Icons.edit_location,
                    size: 25.0,
      
                  ),
                  label: Text(
                    'go to location',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[300]
                    ),
                  ),
      
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children:[
                    Text(
                      data['location'],
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 3.0,
                      )
                    ),  
                    SizedBox(height: 20.0,)  ,            
                    
      
                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['time'],
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 50,
                        letterSpacing: 2.0,
                        fontWeight : FontWeight.bold,
      
                      ),
                      
      
                    )
      
                  ],
                ),
              ],
              
              
            ),
          ),
        ),
      
      
      ),
    );
  }
}
