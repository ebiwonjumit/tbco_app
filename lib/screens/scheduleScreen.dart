import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/schedule_screen_widget.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  ScheduleScreenState createState() => ScheduleScreenState();
}

class ScheduleScreenState extends State<ScheduleScreen> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
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
            '2:00PM - 4:00PM',
            '4:00PM - 6:00PM',
            '6:00PM',
            '7:00PM - 10:00PM'
          ], [
            'Lobby Doors Open',
            'Auditorium Doors Open',
            'Morning Session',
            'Break',
            'Breakouts',
            'TBCO Talks',
            'DINNER BREAK',
            'Doors Open',
            'Night Session'
          ]),
          ScheduleScreenWidget(2, 'Saturday, September 14th', [
            '8:00AM',
            '8:30AM',
            '9:00AM - 11:00AM',
            '11:00AM - 11:15AM',
            '11:15AM - 12:30PM',
            '2:00PM - 4:00PM',
            '4:00PM - 6:00PM',
            '6:00PM',
            '7:00PM - 10:PM'
          ], [
            'Lobby Doors Open',
            'Auditorium Doors Open',
            'Morning Session',
            'Break',
            'Breakouts',
            'TBCO Talks',
            'DINNER BREAK',
            'Doors Open',
            'Night Session'
          ]),
        ],
      );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
