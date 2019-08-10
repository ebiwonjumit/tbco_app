import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tbco_conf_19/screens/highlightBottomNavScreen.dart';
import 'package:tbco_conf_19/screens/splashScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: 'splash',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      'splash': (context) => SplashScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      'home': (context) => highlightBottomNavScreen(),
    },
  ));
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
      home: SplashScreen(),
    );
  }
}
