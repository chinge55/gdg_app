import 'package:flutter/material.dart';
import 'package:gdg_app/buttons.dart';
import './ThirdPage/thirdroute.dart';

class EventButton extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _EventButtonstate();
  }
}

class _EventButtonstate extends State<EventButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
        ),
       FlatButton(
                child: RichText(
          text: TextSpan(
            text: 'About the Event ',
            style: DefaultTextStyle.of(context).style,
           )
          ),
          onPressed: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ThirdRoute()),
            );
          },
       ),
        Buttons('10', '1. Registration', 1),
        Buttons('10.30', '2. Welcome and Event Briefing', 2),
        Buttons('11', '3. Speaker Series', 3),
        Buttons('1', '4. Lunch',4),
        Buttons('2', '5. Flutter beginner workshop', 5),
        Buttons('4.30', '6. Closure', 6),
        
      ],
    );
  }
}
