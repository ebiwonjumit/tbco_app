import 'package:flutter/material.dart';

import 'package:tbco_conf_19/widgets/grid_icon.dart';
import 'package:tbco_conf_19/screens/scheduleScreen.dart';
import 'package:tbco_conf_19/screens/registerScreen.dart';
import 'package:tbco_conf_19/screens/homeScreen.dart';
import 'package:tbco_conf_19/screens/mapScreen.dart';
import 'package:tbco_conf_19/screens/merchScreen.dart';
import 'package:tbco_conf_19/screens/scheduleScreen.dart';

import 'package:url_launcher/url_launcher.dart';

class GridHomeScreen extends StatefulWidget {
  @override
  GridHomeScreenState createState() => GridHomeScreenState();
}

class GridHomeScreenState extends State<GridHomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          body: NestedScrollView(

              headerSliverBuilder:
                  (BuildContext context, bool innerBoxScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 130.0,
                    backgroundColor: Color(0xFF212121),
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 4,
                          ),
                          Text(
                            'Saints & Comrades',
                            style: TextStyle(
                              fontFamily: 'Respira',
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'The Belonging Co Conference 2019',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'September 12-14',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 8,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      background: Image.asset(
                        'assets/images/sand.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ];
              },
              body: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 3,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: GridIcon(
                        icon: 'assets/images/guests_icon.png',
                        title: 'Guests & Hosts',
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScheduleScreen()),
                        );
                      },
                      child: GridIcon(
                        icon: 'assets/images/schedule_icon.png',
                        title: 'Schedule',
                      )),
                  InkWell(
                      onTap: () {
                        //TODO: finish onTap.
                      },
                      child: GridIcon(
                        icon: 'assets/images/talks_icon.png',
                        title: 'Kids Conference',
                      )),
                  InkWell(
                      onTap: () {
                        //TODO: finish onTap.
                      },
                      child: GridIcon(
                        icon: 'assets/images/leadership_icon.png',
                        title: 'Leadership Co',
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MapScreen()),
                        );
                      },
                      child: GridIcon(
                        icon: 'assets/images/map_icon.png',
                        title: 'Map',
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: GridIcon(
                        icon: 'assets/images/sandc_icon.png',
                        title: 'Register 2020',
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL("https://squareup.com/store/tbco");
                      },
                      child: GridIcon(
                        icon: 'assets/images/merch_icon.png',
                        title: 'Merch',
                      )),
                  InkWell(
                      onTap: () {
                        //TODO: finish onTap.
                      },
                      child: GridIcon(
                        icon: 'assets/images/kids_icon.png',
                        title: 'Kids Conference',
                      )),
                  InkWell(
                      onTap: () {
                        //TODO: finish onTap.
                      },
                      child: GridIcon(
                        icon: 'assets/images/faq_icon.png',
                        title: 'Faqs',
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL("https://tbcoconference.com/conference-2019-photos");
                      },
                      child: GridIcon(
                        icon: 'assets/images/photos_icon.png',
                        title: 'Photos',
                      )),
                ],
              )))
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
