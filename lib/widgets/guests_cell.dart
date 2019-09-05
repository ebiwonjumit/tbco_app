import 'package:flutter/material.dart';

class GuestsCell extends StatefulWidget {
  const GuestsCell(this.speakerName, this.speakerSubtitle, this.speakerImage,
      this.onPressed);

  final String speakerName;
  final String speakerSubtitle;
  final String speakerImage;
  final VoidCallback onPressed;

  @override
  GuestsCellState createState() =>
      GuestsCellState(speakerName, speakerImage, speakerSubtitle, onPressed);
}

class GuestsCellState extends State<GuestsCell> {
  GuestsCellState(this.speakerName, this.speakerImage, this.speakerSubtitle,
      this.onPressed);

  final String speakerName;
  final String speakerSubtitle;
  final String speakerImage;
  final VoidCallback onPressed;
  bool isPressed = false;
  Color bg = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final Container cell = Container(
        color: bg,
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Container(width: 50, height: 50, child: Image.asset(speakerImage)),
        Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text(
              speakerName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Respira',
                fontSize: 16,
              ),
            ),
            Text(
              speakerSubtitle,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Helvetica-Regular',
                fontSize: 12,
              ),
            ),
          ],
        ),
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
