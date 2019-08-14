import 'package:flutter/material.dart';

import 'package:tbco_conf_19/widgets/schedule_cell.dart';

class ScheduleScreenWidget extends StatelessWidget{
  const ScheduleScreenWidget(this.index,this.date,this.times,this.events);

  final String date;
  final List<String> times;
  final List<String> events;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/menu_bg.jpg',
                  ),
                  fit: BoxFit.fill,
                )
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,

            body: ListView.separated(
                itemCount: events.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 35, right: 20, left: 20),
                separatorBuilder: (context, position){
                  return SeparatorItem();
                },
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 50,
                    child: ScheduleCell(
                      eventTitle: events[index],
                      time: times[index],
                    ),


                  );
                }
            ),

          ),
            ]
    );

  }

  Widget SeparatorItem(){

    return Container(
      color: Color(0xFFffff00),
      height: 2,
    );

  }

}




