import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/guests_cell.dart';

class GuestsHostsScreen extends StatefulWidget {
  @override
  GuestsHostsScreenState createState() => GuestsHostsScreenState();
}

class GuestsHostsScreenState extends State<GuestsHostsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> speakers = [
    "Henry & Alex Seeley",
    "Banning Liebscher",
    "Robert Madu",
    "Darrell Johnson",
    "TBCO Worship",
    "TBCO Talks",
    "Leadership Co"
  ];
  List<String> speakerimage = [
    "assets/images/seeley_circle.png",
    "assets/images/redman_circle.png",
    "assets/images/tbco_circle.png",
    "assets/images/madu_circle.png",
    "assets/images/mac_circle.png",
    "assets/images/maxwell_circle.png",
    "assets/images/myrin_circle.png",
    "assets/images/mreed_circle.png",
    "assets/images/lampa_circle.png",
    "assets/images/lampas_circle.png",
    "assets/images/jreed_circle.png",
    "assets/images/johnson_circle.png",
    "assets/images/herms_circle.png",
    "assets/images/grant_circle.png",
    "assets/images/gokey_circle.png",
    "assets/images/banning_circle.png
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/menu_bg.jpg',
              ),
              fit: BoxFit.fill,
            )),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0xFF2d2d2d),
            centerTitle: true,
            title: Text(
              '+++Guests & Hosts+++',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
            ),
          ),
          body: ListView.builder(
            itemCount: 7,
            padding: EdgeInsets.all(5),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 100,
                  child: GuestsCell(
                    speakers[index],
                    '',
                    speakerimage[index],
                    null
                  ));
            },
          )),
    ]);
  }
}
