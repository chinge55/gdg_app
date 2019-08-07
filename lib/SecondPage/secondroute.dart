import 'package:flutter/material.dart';
import './showdata.dart';



class SecondRoute extends StatelessWidget {
  final String message;
  final String time;
  final int number;
  SecondRoute(this.message, this.time, this.number);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(message),
      ),
      body: Center(
           child: Column(
             children: <Widget>[
               Align(
                 alignment: Alignment.centerLeft,
                                child: Text(
                  message,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
               ),   
              ShowData(number),
             ],
           ),
        // child: RaisedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: ShowData()
        // ),
      ),
    );
  }
}
