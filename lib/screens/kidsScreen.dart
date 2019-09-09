import 'package:flutter/material.dart';

class KidsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/menu_bg.jpg'), fit: BoxFit.cover)),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFF212121),
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(""),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                floating: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                      padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.left,
                      ))
                ]),
              )
            ],
          ))
    ]);
  }
}
