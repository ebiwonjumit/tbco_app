import 'package:flutter/material.dart';
import 'package:scalable_image/scalable_image.dart';


class MapScreen extends StatefulWidget {

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFF2d2d2d),
        centerTitle: true,
        title: Text(
          '+++AUDITORIUM MAP+++',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Helvetica'
          ),
        ),
      ),
      body: Container(
        child: ScalableImage(
          imageProvider: AssetImage('assets/images/final_map.png'),
          dragSpeed: 4.0,
          maxScale: 16.0,
          wrapInAspect: false,
          enableScaling: true,
        ),
      )

    );
  }

}