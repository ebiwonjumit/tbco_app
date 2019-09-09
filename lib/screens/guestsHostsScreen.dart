import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/guests_cell.dart';
import 'package:tbco_conf_19/screens/speakerDetailScreen.dart';
import 'package:tbco_conf_19/screens/worshipDetailScreen.dart';

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
    "Banning Liebscher",
    "Robert Madu",
    "Darrell Johnson",
    "Henry & Alex Seeley",
    "TBCO Worship",
  ];
  List<String> speakersub =[
    "",
    "",
    "",
    "",
    "",
  ];
  List<String> speakercircle = [
    "assets/images/banning_circle.png",
    "assets/images/madu_circle.png",
    "assets/images/johnson_circle.png",
    "assets/images/seeley_circle.png",
    "assets/images/tbco_circle.png",
  ];
  List<String> speakerimage = [
    "assets/images/banning.jpg",
    "assets/images/robert.jpg",
    "assets/images/darrell.png",
    "assets/images/henry+seeley.jpg",
    "assets/images/tbco.jpg",
  ];
  List<String> speakerinfo = [
    "Banning Liebscher is the founding pastor of Jesus Culture, a ministry of worship, events, and leadership development.\n In 2014, Banning and his wife SeaJay, their family, and the Jesus Culture team planted Jesus Culture Sacramento, a church committed to seeing believers encounter God, be empowered as world changers, and engage their city as leaders. Banning is the author of three books, the latest one being, \"Rooted: the Hidden Places Where God Develops You.”\n\nBanning and his wife have three children.",
    "Robert is passionately in love with Jesus. For 13 years he has crisscrossed the globe, preaching the gospel and taking every opportunity to tell people about the love of Jesus Christ. He is a family man, husband to Taylor Madu, and father, to Everly Adair Madu, Robert Nnaji Madu III, and Remington Elaine Madu. Robert presents the gospel in such a unique way, that you’re leaning in, holding on to every word that is spoken, as he paints the beauty of the transforming, powerful, life-giving, word of God. Robert is compelled, to make aware to every individual that God is for them and that He has a specific plan and purpose for every life.\n\nIn addition to his itinerate ministry he serves on the teaching team at Trinity Church in Cedar Hill, TX, a church that he has called home since the age of 3.",
    "Darrell Johnson has been preaching Jesus Christ and His gospel for over 46 years. He has served a number of Presbyterian congregations in California, Union Church of Manila in the Philippines, and the historic First Baptist Church in the heart of Vancouver, Canada.\nIn addition to writing a major work on preaching, “The Glory of Preaching: Participating in God’s Transformation of the World,” many of his sermon series have been published in book form, including “Fifty-Seven Words That Change the Word: A Journey Through the Lord’s Prayer,” “The Beatitudes: Living in Sync with the Reign of God,” “Who is Jesus?” and “Discipleship on the Edge: An Expository Journey through the Book of Revelation.” Darrell has also taught preaching for Fuller Theological Seminary in Pasadena, California, Regent College and Carey Theological College in Vancouver, British Columbia, and is now serving as Teaching Fellow at Regent.\n\nHe is married to Sharon Lynette, and together they have raised four children, adopted from four different countries of the world, and now enjoy loving eleven active grandchildren!",
    "Born and raised in Australia, Henry and Alex spent many years on the pastoral team at a church in Melbourne pioneering a worship movement that grew to become a church of over 10,000 people. In 2012, they relocated to Nashville, Tennessee, with nothing but a stirring from God and in February 2014, The Belonging Co was birthed and now reaches thousands of people on a weekly basis.\n\nHenry is passionate about all things creative... Songwriting, producing, mixing, film, visual arts... He is also a self professed “gear nerd”, and won a GRAMMY® award in 2016 for mixing.\n\nAlex is a passionate communicator and teacher of the Word, possessing a unique ability to reveal how the Word of God is applicable to our everyday lives. Not only has she been a preacher for 20 years, but she is also the author of Tailor Made, her first book that introduces the power of God’s love through personal anecdotes that Alex shares.Her second book “The Opposite Life” is about unlocking the mysteries of God’s upside down kingdom and is available now.\n\nHenry and Alex are happily married and have two children,Holly and Taylor.",
    "",
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
              'Guests & Hosts',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
            ),
          ),
          body: ListView.separated(
            itemCount: 5,
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            separatorBuilder: (context, position) {
              return SeparatorItem();
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 80,
                  child:
                      GuestsCell(speakers[index], speakersub[index], speakercircle[index], () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          if(index == 4) {
                            return WorshipDetailScreen(speakers[index],
                                speakerimage[index], "https://music.apple.com/us/artist/the-belonging-co/1278065048", "https://open.spotify.com/artist/1XnyRY1hSHsZxiIEX8Nzl5?si=ieNQfMLcRC2YdgYjPq1lSw");

                          }
                          else{
                            return SpeakerDetailScreen(speakers[index],
                                speakerimage[index], speakerinfo[index]);
                          }
                        }));
                  }));
            },
          )),
    ]);
  }

  Widget SeparatorItem() {
    return Container(
      color: Colors.white,
      height: 1,
      width: 250,
    );
  }
}
