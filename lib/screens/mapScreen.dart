import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


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
        child: PhotoView(
          imageProvider: AssetImage('images/map.png'),
        ),
      )

    );
  }

}