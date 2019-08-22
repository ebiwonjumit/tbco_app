import 'package:flutter/material.dart';

class MerchImage extends StatefulWidget{
  const MerchImage({this.imgLocation});

  final String imgLocation;

  @override
  _MerchImage createState() => _MerchImage(imgLocation);
}

class _MerchImage extends State<MerchImage>{
  _MerchImage(this.imgLocation);

  final String imgLocation;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      margin: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          image: DecorationImage(
              image: AssetImage(imgLocation),
              fit: BoxFit.fill)),
    );
  }
}