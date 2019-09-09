import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorshipDetailScreen extends StatefulWidget {
  const WorshipDetailScreen(this.speakerName, this.speakerImage, this.appleLink,
      this.spotifyLink);

  final String speakerName;
  final String speakerImage;
  final String appleLink;
  final String spotifyLink;

  @override
  WorshipDetailScreenState createState() =>
      WorshipDetailScreenState(
          speakerName, speakerImage, appleLink, spotifyLink);
}

class WorshipDetailScreenState extends State<WorshipDetailScreen> {
  WorshipDetailScreenState(this.speakerName, this.speakerImage, this.appleLink,
      this.spotifyLink);

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
                image: AssetImage('assets/images/menu_bg.jpg'),
                fit: BoxFit.cover)),
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
                  ),
                ),
                floating: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                      padding: EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(
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
                            Row(
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
                                  icon: Image.asset(
                                      "assets/images/spotify.png"),
                                  onPressed: () {
                                    _launchURL(spotifyLink);
                                  },
                                ),
                                IconButton(
                                  icon: Image.asset(
                                      "assets/images/tbcoMusic.png"),
                                  onPressed: () {
                                    _launchURL('https://thebelonging.co');
                                  },
                                ),
                              ],
                            ),
                            Padding(
                                padding:
                                EdgeInsets.only(
                                    top: 5),
                                child: Text(
                                  "The Belonging Co is a church movement based in Nashville, TN. Since it’s inception in 2014, the church has become known as a place to find freedom, breakthrough, and healing through God’s Word, His presence and worship.  The heart of The Belonging Co is that every song released would empower both individuals and the collective body of Christ to encounter God through worship, and experience the freedom that comes through knowing Jesus.\n\nWe desire encounter over entertainment, intimacy over industry, presence over presentation, people over position… And most of all JESUS over everything.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.left,
                                ))
                          ])
                  )
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
