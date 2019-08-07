import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// I should have made 6 different classes.. but I'm lazy
class ShowData extends StatefulWidget
{
  int number;
  ShowData(this.number);
    State<StatefulWidget> createState() {
    return _ShowDataState(number);
  }
}

class _ShowDataState extends State<ShowData> {
  
  int number;
   var now = new DateTime.now();
_ShowDataState(this.number);

  String showStringtitle()
{
  switch (number)
  {
    case 0:
    {
      String str = "This is a GDG Event which is bla bla bla... ";
      return str;
    }
    case 1:
    {
      if(now.hour<=10)
        return "\n \n \t The registration part!";
      else
        return "\n \n \t The registration has already ended!";
      
    }
    break;
    case 2:
    {
      if(now.hour==11 || now.minute<30)
        return "\n \t Welcome and Event Briefing part!";
      else if(now.hour<11)
        return "\n \t Welcome and Event Briefing part!";
      else 
        return "\n \t Sorry fucker!";        
    }
    break;
    case 3:
    {
      return "\n \t Speaker Series!";
    }
    break;
    case 4:
    {
      return "\n \t You fucking get to eat";
    }
    break;
    case 5:
    {
      return "\n \t Workshop Start";
    }
    break;
    case 6:
    {
      return "\n \t Closure of the program";
    }

  }
}
  Widget build(BuildContext context) {
   
 
    // TODO: implement build
    return Column(
      children: <Widget>[
         Align(
                 alignment: Alignment.centerLeft,
                                child: Text(
                  showStringtitle(),
                  textAlign: TextAlign.left,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15.0),
              ),
               ),  
      ],
    );
  }
}