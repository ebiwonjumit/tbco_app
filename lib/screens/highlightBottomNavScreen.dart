import 'package:flutter/material.dart';
import 'package:tbco_conf_19/screens/registerScreen.dart';
import 'package:tbco_conf_19/screens/homeScreen.dart';
import 'package:tbco_conf_19/screens/mapScreen.dart';
import 'package:tbco_conf_19/screens/merchScreen.dart';
import 'package:tbco_conf_19/screens/scheduleScreen.dart';




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
    RegisterScreen(),



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
            icon: Image.asset('assets/images/home_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/schedule_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/map_ic_2.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/merch_ic.png'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/s_and_c_ic.png'),
            title: Text(''),

          ),
        ],

      ),

    );
  }
}