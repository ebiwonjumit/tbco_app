import 'package:flutter/material.dart';
import 'package:tbco_conf_19/screens/web.dart';
import 'package:tbco_conf_19/screens/homeScreen.dart';
import 'package:tbco_conf_19/screens/mapScreen.dart';
import 'package:tbco_conf_19/screens/merchScreen.dart';
import 'package:tbco_conf_19/screens/scheduleScreen.dart';



import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


class highlightBottomNavScreen extends StatefulWidget {
  @override
  highlightBottomNavScreenState createState() => highlightBottomNavScreenState();
}

class highlightBottomNavScreenState  extends State<highlightBottomNavScreen>{



  int _currentIndex = 0;
  final List<Widget> screens =[
    HomeScreen(),
    ScheduleScreen(),
    MapScreen(),
    MerchScreen(),
    Web('+++SAINTS & COMRADES+++','https://thebelongingco.brushfire.com/conference-2019/446425'),



  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF2d2d2d),
        type:BottomNavigationBarType.fixed,
        iconSize: 10,
        selectedItemColor: Colors.white,
        onTap: (index){
          onTabTapped(index);
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/home_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/schedule_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/map_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/merch_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/s_and_c_ic.png'),
            title: Text(''),

          ),
        ],

      ),

    );
  }
}