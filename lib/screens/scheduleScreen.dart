import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/schedule_screen_widget.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  ScheduleScreenState createState() => ScheduleScreenState();
}

class ScheduleScreenState extends State<ScheduleScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2d2d2d),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
              tabs: [
            Tab(
              text: 'Sept. 12th',
            ),
            Tab(text: 'Sept. 13th'),
            Tab(text: 'Sept. 14th')
          ]),
          title: Text('+++CONFERENCE SCHEDULE+++',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
          ),
        ),
        body: TabBarView(
          children: [
            ScheduleScreenWidget(0, 'Thursday, September 12th', [
              '4:00PM',
              '6:00PM',
              '7:00PM - 10:00PM'
            ], [
              'Registration Check-In Open',
              'Auditorium Doors Open',
              'Opening Night'
            ]),
            ScheduleScreenWidget(1, 'Friday, September 13th', [
              '8:00AM',
              '8:30AM',
              '9:00AM - 11:00AM',
              '11:00AM - 11:15AM',
              '11:15AM - 12:30PM',
              '12:30PM - 2:00PM',
              '2:00PM - 4:00PM',
              '4:00PM - 6:00PM',
              '6:00PM',
              '7:00PM - 10:00PM'
            ], [
              'Lobby Doors Open',
              'Auditorium Doors Open',
              'Morning Session 1',
              'Break',
              'Morning Session 2',
              'Lunch Break',
              'TBCO Talks',
              'Dinner Break',
              'Doors Open',
              'Night Session'
            ]),
            ScheduleScreenWidget(2, 'Saturday, September 14th', [
              '8:00AM',
              '8:30AM',
              '9:00AM - 11:00AM',
              '11:00AM - 11:15AM',
              '11:15AM - 12:30PM',
              '12:30PM - 2:00PM',
              '2:00PM - 4:00PM',
              '4:00PM - 6:00PM',
              '6:00PM',
              '7:00PM - 10:00PM'
            ], [
              'Lobby Doors Open',
              'Auditorium Doors Open',
              'Morning Session 1',
              'Break',
              'Morning Session 2',
              'Lunch Break',
              'TBCO Talks',
              'Dinner Break',
              'Doors Open',
              'Night Session'
            ]),
          ],
        )
      )
    );
  }

}
