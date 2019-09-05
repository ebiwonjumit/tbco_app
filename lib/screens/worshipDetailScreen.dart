import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorshipDetailScreen extends StatefulWidget {
  const WorshipDetailScreen(
      this.speakerName, this.speakerImage, this.appleLink, this.spotifyLink);

  final String speakerName;
  final String speakerImage;
  final String appleLink;
  final String spotifyLink;

  @override
  WorshipDetailScreenState createState() =>
      WorshipDetailScreenState(speakerName, speakerImage, appleLink, spotifyLink);
}

class WorshipDetailScreenState extends State<WorshipDetailScreen> {
  WorshipDetailScreenState(
      this.speakerName, this.speakerImage, this.appleLink, this.spotifyLink);

  final String speakerName;
  final String speakerImage;
  final String appleLink;
  final String spotifyLink;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(speakerImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 230, left: 15, right: 10),
                      child: Text(
                        speakerName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Respira'),
                        textAlign: TextAlign.left,
                        softWrap: true,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset("assets/images/apple.png"),
                            onPressed: () {
                              _launchURL(appleLink);
                            },
                          ),
                          IconButton(
                            icon: Image.asset("assets/images/spotify.png"),
                            onPressed: () {
                              _launchURL(spotifyLink);
                            },
                          ),
                        ],
                      ))
                ]),
              )
            ],
          ))
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
