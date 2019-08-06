import 'package:flutter/material.dart';

class sidebarButton extends StatefulWidget{
  const sidebarButton({this.title, this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  sidebarButtonState createState() => sidebarButtonState(title,  onPressed);
}

class sidebarButtonState extends State<sidebarButton>{
  sidebarButtonState(this.title, this.onPressed);

  final String title;
  final VoidCallback onPressed;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Container buttonContainer = Container(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
          child:Text(title, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
          ),
        ],
      )
    );


    return Container(
      child: GestureDetector(
          onTapCancel: () {
            setState(() {
              isPressed = false;
            });
          },
          onTapDown: (TapDownDetails details) {
            setState(() {
              isPressed = true;
            });
          },
          onTapUp: (TapUpDetails details) {
            setState(() {
              isPressed = false;
            });
          },
          onTap: () {
            onPressed();
          },
          child: buttonContainer));
  }
}