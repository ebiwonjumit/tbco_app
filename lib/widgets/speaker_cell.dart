import 'package:flutter/material.dart';

class SpeakerCell extends StatefulWidget{
  const SpeakerCell(this.speakerName, this.speakerImage, this.onPressed);

  final String speakerName;
  final String speakerImage;
  final VoidCallback onPressed;

  @override
  SpeakerCellState createState() => SpeakerCellState(speakerName, speakerImage, onPressed);
}

class SpeakerCellState extends State<SpeakerCell>{
  SpeakerCellState(this.speakerName, this.speakerImage, this.onPressed);

  final String speakerName;
  final String speakerImage;
  final VoidCallback onPressed;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Container cell = Container(
      margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          image: DecorationImage(
              image: AssetImage(speakerImage),
            fit: BoxFit.fitWidth,
          )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:120, left: 10),
              child: Text(
              speakerName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Respira',
                fontSize: 20,
              ),
            )
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
            child: cell));
  }
}