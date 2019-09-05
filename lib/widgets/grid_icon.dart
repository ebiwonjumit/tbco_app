import 'package:flutter/material.dart';

class GridIcon extends StatefulWidget {
  const GridIcon({this.icon, this.title, this.onPressed});

  final String icon;
  final String title;
  final VoidCallback onPressed;

  @override
  GridIconState createState() => GridIconState(icon, title, onPressed);
}

class GridIconState extends State<GridIcon> {
  GridIconState(this.icon, this.title, this.onPressed);

  final String icon;
  final String title;
  final VoidCallback onPressed;
  bool isPressed = false;
  Color bg = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final Container cell = Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
          ),
        ),
        Center(
            child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Helvetica-Regular',
                fontSize: 13),
          ),
        ))
      ],
    ));

    return Container(
        child: GestureDetector(
            onTapCancel: () {
              setState(() {
                isPressed = false;
                bg = Colors.transparent;
              });
            },
            onTapDown: (TapDownDetails details) {
              setState(() {
                bg = Colors.grey;
                isPressed = true;
              });
            },
            onTapUp: (TapUpDetails details) {
              setState(() {
                isPressed = false;
                bg = Colors.transparent;
              });
            },
            onTap: () {
              onPressed();
              bg = Colors.transparent;
            },
            child: cell));
  }
}
