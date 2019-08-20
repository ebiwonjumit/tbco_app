import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/speaker_cell.dart';
import 'package:tbco_conf_19/screens/speakerDetailScreen.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
  List<String> speakerinfo = [
    "Born and raised in Australia, Henry and Alex spent many years on the pastoral team at a church in Melbourne pioneering a worship movement that grew to become a church of over 10,000 people. In 2012, they relocated to Nashville, Tennessee, with nothing but a stirring from God and in February 2014, The Belonging Co was birthed and now reaches thousands of people on a weekly basis.\n\n\n Henry is passionate about all things creative... Songwriting, producing, mixing, film, visual arts... He is also a self professed “gear nerd”, and won a GRAMMY® award in 2016 for mixing.\n\n\nAlex is a passionate communicator and teacher of the Word, possessing a unique ability to reveal how the Word of God is applicable to our everyday lives. Not only has she been a preacher for 20 years, but she is also the author of Tailor Made, her first book that introduces the power of God’s love through personal anecdotes that Alex shares.\n\n\nHenry and Alex are happily married and have two children,Holly and Taylor.",
    "Banning Liebscher is the founding pastor of Jesus Culture, a ministry of worship, events, and leadership development.\n In 2014, Banning and his wife SeaJay, their family, and the Jesus Culture team planted Jesus Culture Sacramento, a church committed to seeing believers encounter God, be empowered as world changers, and engage their city as leaders. Banning is the author of three books, the latest one being, \"Rooted: the Hidden Places Where God Develops You.”\n\n\nBanning and his wife have three children.",
    "Robert is passionately in love with Jesus. For 13 years he has crisscrossed the globe, preaching the gospel and taking every opportunity to tell people about the love of Jesus Christ. He is a family man, husband to Taylor Madu, and father, to Everly Adair Madu, Robert Nnaji Madu III, and Remington Elaine Madu. Robert presents the gospel in such a unique way, that you’re leaning in, holding on to every word that is spoken, as he paints the beauty of the transforming, powerful, life-giving, word of God. Robert is compelled, to make aware to every individual that God is for them and that He has a specific plan and purpose for every life.\n\n\nIn addition to his itinerate ministry he serves on the teaching team at Trinity Church in Cedar Hill, TX, a church that he has called home since the age of 3.",
    "Darrell Johnson has been preaching Jesus Christ and His gospel for over 46 years. He has served a number of Presbyterian congregations in California, Union Church of Manila in the Philippines, and the historic First Baptist Church in the heart of Vancouver, Canada.\nIn addition to writing a major work on preaching, “The Glory of Preaching: Participating in God’s Transformation of the World,” many of his sermon series have been published in book form, including “Fifty-Seven Words That Change the Word: A Journey Through the Lord’s Prayer,” “The Beatitudes: Living in Sync with the Reign of God,” “Who is Jesus?” and “Discipleship on the Edge: An Expository Journey through the Book of Revelation.” Darrell has also taught preaching for Fuller Theological Seminary in Pasadena, California, Regent College and Carey Theological College in Vancouver, British Columbia, and is now serving as Teaching Fellow at Regent.\n\n\nHe is married to Sharon Lynette, and together they have raised four children, adopted from four different countries of the world, and now enjoy loving eleven active grandchildren!",
    "Apple Music: https://music.apple.com/us/artist/the-belonging-co/1278065048 \n\n\n\ Spotify: https://open.spotify.com/artist/1XnyRY1hSHsZxiIEX8Nzl5?si=ieNQfMLcRC2YdgYjPq1lSw ",
    "More info to come soon",
    "Since the inception of The Belonging Co. our heart has been to make room for God to move. After only a few short years, we have experienced exponential growth, quickly reaching over 3,000 people across Nashville and even more online from all over the world.\n\n\n It is our goal to open the doors to our house and welcome local churches from every size, denomination and background to come and encounter the presence of God in a fresh and tangible way and allow the atmosphere of heaven to transform lives.\n\n\n Our heart is also to empower and equip local churches everywhere. We would like to invite pastors and senior leaders to attend an intimate leadership session with our lead pastors Henry & Alex Seeley as they share the story of our humble beginnings/accidental start and give insight into building a church from the ground up - communicating the mandate, blueprint and culture of our church. "
  ];
  List<String> speakerimage = [
    "assets/images/henry+seeley.jpg",
    "assets/images/banning.jpg",
    "assets/images/robert.jpg",
    "assets/images/darrell.jpg",
    "assets/images/tbco.jpg",
    "assets/images/talks.jpg",
    "assets/images/leadership.jpg"

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
      PlatformScaffold(
        backgroundColor: Colors.transparent,
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
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
            body: ListView.builder(
              itemCount: 7,
              padding: EdgeInsets.all(5),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 160,
                    child:
                        SpeakerCell(speakers[index], speakerimage[index], () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return SpeakerDetailScreen(speakers[index],
                            speakerimage[index], speakerinfo[index]);
                      }));
                    }));
              },
            )),
      )
    ]);
  }
}
