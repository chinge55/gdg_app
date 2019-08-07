import 'package:flutter/material.dart';
import './SecondPage/secondroute.dart';

class Buttons extends StatelessWidget {
  final String message;
  final String time;
  final int number;
  // I don't know why this works but the normal setting does not work:
  Buttons(this.time, this.message, this.number);
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Align(
              
              alignment: Alignment.bottomLeft,
              child: new FlatButton.icon(
          color: Colors.transparent,
          splashColor: Colors.lightBlue,
          padding:EdgeInsets.all(20.0),
          label: Text(
            message,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            Icons.access_time,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondRoute(message, time, number)),
            );
          },
        ),
      ),
    );
  }
}
