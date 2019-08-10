import 'package:flutter/material.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

import 'package:tbco_conf_19/screens/highlightBottomNavScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  VideoPlayerController playerController;

  VoidCallback listener;

  @override
  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    initializeVideo();
    playerController.play();


    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    Navigator.of(context).pop('splash');
    Navigator.of(context).pushReplacementNamed('home');
  }

  void initializeVideo() {
    playerController =
    VideoPlayerController.asset('images/splash_vid.mp4')
      ..addListener(listener)
      ..setVolume(0.0)
      ..initialize()
      ..play();
  }

  @override
  void deactivate() {
    if (playerController != null) {
      playerController.removeListener(listener);
    }
    super.deactivate();
  }

  @override
  void dispose() {
    if (playerController != null) playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
          new AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                  playerController,
                )
                    : Container()),
              )),
        ]));
  }
}