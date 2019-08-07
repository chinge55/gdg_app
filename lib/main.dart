import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './eventbutton.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: 'GDG Event',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Details'),
        ), 
            body:Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'GDG Event Schedule:',
                    //style: DefaultTextStyle.of(context).style,
                    style: TextStyle(color: Colors.blueGrey, fontSize: 30, fontWeight: FontWeight.bold,
                    textBaseline: TextBaseline.alphabetic,
                    backgroundColor: Colors.white10
              
                    ),
                    children: <TextSpan>[
                    //  TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    //  TextSpan(text: ' world!'),
                  ]
                  
                  ),
                ),
                  EventButton(),
              ],
            ),
         
        )
      
    );
  }

}