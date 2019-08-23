import 'package:flutter/material.dart';

class GridIcon extends StatelessWidget {
  const GridIcon({this.icon, this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                fontSize: 15),
          ),
        ))
      ],
    ));
  }
}
