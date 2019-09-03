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

  @override
  Widget build(BuildContext context) {
    final Container cell = Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Image.asset(speakerImage),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                fontWeight: FontWeight.bold,
                fontFamily: 'Respira',
                fontSize: 14,
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
            child: cell));
  }
}
