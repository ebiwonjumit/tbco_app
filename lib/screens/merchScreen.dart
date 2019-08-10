import 'package:flutter/material.dart';

class MerchScreen extends StatefulWidget {
  @override
  MerchScreenState createState() => MerchScreenState();
}

class MerchScreenState extends State<MerchScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/menu_bg.jpg'),
              fit: BoxFit.fill
        )),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          bottomOpacity: 0,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xFF2d2d2d),
          title: Text(
            '+++CONFERENCE LINE+++',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              height: 300,
              width: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('images/merch_placeholder_1.jpg'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: 300,
              width: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('images/merch_placeholder_2.jpeg'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: 300,
              width: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('images/merch_placeholder_3.jpeg'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: 300,
              width: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('images/merch_placeholder_4.jpeg'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: 300,
              width: 200,
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  image: DecorationImage(
                      image: AssetImage('images/merch_placeholder_5.jpeg'),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      )
    ]);
  }
}
