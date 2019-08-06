import 'package:flutter/material.dart';

class ScheduleCell extends StatefulWidget{
  const ScheduleCell({this.time, this.eventTitle});

  final String time;
  final String eventTitle;

  @override
  _ScheduleCell createState() => _ScheduleCell(time, eventTitle);

}

class _ScheduleCell extends State<ScheduleCell>{
  _ScheduleCell(this.time, this.eventTitle);

  final String eventTitle;
  final String time;



  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(time, style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Helvetica-Bold', fontWeight: FontWeight.bold),),
              Container(width: 20,),
              Text(eventTitle, style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Helvetica',fontStyle: FontStyle.italic ),),


            ]),
    );

  }

}




