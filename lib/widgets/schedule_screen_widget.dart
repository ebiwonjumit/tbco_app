import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

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
                    'images/menu_bg.jpg',
                  ),
                  fit: BoxFit.fill,
                )
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            appBar:AppBar(
              backgroundColor: Color(0xFF2d2d2d),
              centerTitle: true,
              title: Text(
                '+++' + date + '+++',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Respira'
                ),
              ),
            ),

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

            bottomNavigationBar:
          Padding(
            padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/2-20, bottom: 10),
            child: DotsIndicator(
                dotsCount: 3,
                position: index,
                decorator: DotsDecorator(
                  activeColor: Color(0xFFffff00),
                ),
            ))

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




