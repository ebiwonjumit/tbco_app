import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tbco_conf_19/screens/highlightBottomNavScreen.dart';
import 'package:tbco_conf_19/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: highlightBottomNavScreen(),
    );
  }
}
