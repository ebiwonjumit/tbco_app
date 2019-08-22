import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:tbco_conf_19/widgets/merch_image.dart';

class MerchScreen extends StatefulWidget {
  @override
  MerchScreenState createState() => MerchScreenState();
}

class MerchScreenState extends State<MerchScreen> {
  @override
  void initState() {
    super.initState();
  }

  List<String> merchImages = [
    'assets/images/merch_placeholder_1.jpg',
    'assets/images/merch_placeholder_2.jpeg',
    'assets/images/merch_placeholder_3.jpeg',
    'assets/images/merch_placeholder_4.jpeg',
    'assets/images/merch_placeholder_5.jpeg'
  ];

  List<String> merchLinks = [
    'http://tbco.store/item/saints-comrades-saint-hoodie',
    'http://tbco.store/item/tbco-dad-hat-white',
    'http://tbco.store/item/a-w-long-sleeve-tee-white-pink',
    'http://tbco.store/item/belonging-bomber-black',
    'http://tbco.store/item/unisex-cø-white',

  ];


  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/menu_bg.jpg'),
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
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                focusColor: Colors.black,
                splashColor: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                radius: 7,
                onTap: (){
                  _launchURL(merchLinks[index]);
                },
                
                child: MerchImage(
                imgLocation: merchImages[index],)
              );
            },
        )
      )
    ]);
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


