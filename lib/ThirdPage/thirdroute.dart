import 'package:flutter/material.dart';

// Third route which is shown after 'About the Event' is pressed
class ThirdRoute extends StatelessWidget
{
  Widget build(BuildContext context)
  {
     return Scaffold(
      appBar: AppBar(
        title: Text('About the Event'),
      ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Well Well.. I never thought this would also be pressed. \n Find something to do'),
            ],

          ),
          ),
     );
  }
}