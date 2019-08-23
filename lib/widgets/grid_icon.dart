import 'package:flutter/material.dart';

class GridIcon extends StatelessWidget{
  const GridIcon({this.icon,this.title});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(icon, fit: BoxFit.fill,),
          ),
          Center(
            child: Text(title, style: TextStyle(color: Colors.white, fontFamily: 'Helvetica-Regular'),),
          )


        ],
      )
    );
  }
}