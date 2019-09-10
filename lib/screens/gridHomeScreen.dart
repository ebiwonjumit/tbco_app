import 'package:flutter/material.dart';

import 'package:tbco_conf_19/widgets/grid_icon.dart';
import 'package:tbco_conf_19/screens/scheduleScreen.dart';
import 'package:tbco_conf_19/screens/registerScreen.dart';
import 'package:tbco_conf_19/screens/homeScreen.dart';
import 'package:tbco_conf_19/screens/mapScreen.dart';
import 'package:tbco_conf_19/screens/kidsScreen.dart';
import 'package:tbco_conf_19/screens/guestsHostsScreen.dart';

import 'package:url_launcher/url_launcher.dart';

class GridHomeScreen extends StatefulWidget {
  @override
  GridHomeScreenState createState() => GridHomeScreenState();
}

class GridHomeScreenState extends State<GridHomeScreen> {
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
          appBar: MyCustomAppBar(height: 150),
          body: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
              child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            children: <Widget>[
              GridIcon(
                  icon: 'assets/images/guests_icon.png',
                  title: 'Guests & Hosts',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GuestsHostsScreen()),
                    );
                  }),
              GridIcon(
                icon: 'assets/images/schedule_icon.png',
                title: 'Schedule',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScheduleScreen()),
                  );
                },
              ),
              GridIcon(
                icon: 'assets/images/talks_icon.png',
                title: 'TBCO Talks',
                onPressed: () {
                  _launchURL("https://www.tbcoconference.com/talks");
                },
              ),
              GridIcon(
                icon: 'assets/images/leadership_icon.png',
                title: 'Leadership Co',
                onPressed: () {
                  _launchURL("https://www.tbcoconference.com/leadershipco");
                },
              ),
              GridIcon(
                icon: 'assets/images/kids_icon.png',
                title: 'Kids',
                onPressed: () {
                  _launchURL("https://www.tbcoconference.com/kids");
                },
              ),
              GridIcon(
                icon: 'assets/images/map_icon.png',
                title: 'Map',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                },
              ),
              GridIcon(
                icon: 'assets/images/merch_icon.png',
                title: 'Merch',
                onPressed: () {
                  _launchURL("https://squareup.com/store/tbco");
                },
              ),
              GridIcon(
                icon: 'assets/images/faq_icon.png',
                title: 'Faqs',
                onPressed: () {
                  _launchURL(
                      "https://www.tbcoconference.com/faq-2");
                },
              ),
              GridIcon(
                icon: 'assets/images/photos_icon.png',
                title: 'Photos',
                onPressed: () {
                  _launchURL(
                      "https://tbcoconference.com/conference-2019-photos");
                },
              ),
              GridIcon(
                icon: 'assets/images/competition_icon.png',
                title: 'Competition',
                onPressed: () {
                  _launchURL(
                      "https://www.tbcoconference.com/competition-2019");
                },
              ),
              GridIcon(
                icon: 'assets/images/testimony_icon.png',
                title: 'Testify',
                onPressed: () {
                  _launchURL(
                      "https://docs.google.com/forms/d/e/1FAIpQLSds0l5G1IvgjxASAhPJadf3W2sr2KavW7GCTEKCTOlP4k2xVg/viewform");
                },
              ),
              GridIcon(
                icon: 'assets/images/sandc_icon.png',
                title: 'Register 2020',
                onPressed: () {
                  _launchURL('https://thebelongingco.churchcenter.com/registrations/events/271006');
                },
              ),
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

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/sand.jpg',
          ),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
              ),
              Text(
                'Saints & Comrades',
                style: TextStyle(
                  fontFamily: 'Respira',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                'The Belonging Co Conference 2019',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              Text(
                'September 12-14',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
