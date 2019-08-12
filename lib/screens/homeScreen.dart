import 'package:flutter/material.dart';
import 'package:tbco_conf_19/widgets/speaker_cell.dart';
import 'package:tbco_conf_19/screens/speakerDetailScreen.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState  extends State<HomeScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> speakers = ["Henry & Alex Seeley", "Banning Liebscher", "Robert Madu", "Darrell Johnson", "TBCO Worship", "Leadership Co", "TBCO Talks"];
  List<String> speakerinfo =["Senior Pastors and your TBCØ Conference hosts, Henry & Alex Seeley were born and raised in Adelaide, South Australia, where they first met.\n\n\n They moved to Melbourne in 2003 and alongside their pastors, pioneered a worship movement in Australia that grew to a church of nearly 10,000 people.\n\n\nBoth ordained pastors with The Australian Christian Churches (ACC), a movement of over 1,100 churches, they have been in \"full-time ministry\" for over 2 decades.\n\n\nIn 2012, along with their two children, the couple moved to Nashville TN where they began ministering to local musicians and artists in their home, a small group that has birthed The Belonging Co.\n\n\nHenry & Alex are passionate about seeing people have a genuine encounter with Jesus, raising a generation that will share the love and hope of Jesus to this world.\n\n\nMarried for 20 years, they have two children, Holly (15) and Taylor (10).", "Banning Liebscher is the founding pastor of Jesus Culture, a ministry of worship, events, and leadership development.\n In 2014, Banning and his wife SeaJay, their family, and the Jesus Culture team planted Jesus Culture Sacramento, a church committed to seeing believers encounter God, be empowered as world changers, and engage their city as leaders. Banning is the author of three books, the latest one being, \"Rooted: the Hidden Places Where God Develops You.”\n\n\nBanning and his wife have three children.", "Robert is passionately in love with Jesus. For 13 years he has crisscrossed the globe, preaching the gospel and taking every opportunity to tell people about the love of Jesus Christ. He is a family man, husband to Taylor Madu, and father, to Everly Adair Madu, Robert Nnaji Madu III, and Remington Elaine Madu. Robert presents the gospel in such a unique way, that you’re leaning in, holding on to every word that is spoken, as he paints the beauty of the transforming, powerful, life-giving, word of God. Robert is compelled, to make aware to every individual that God is for them and that He has a specific plan and purpose for every life.\n\n\nIn addition to his itinerate ministry he serves on the teaching team at Trinity Church in Cedar Hill, TX, a church that he has called home since the age of 3.", "Darrell Johnson has been preaching Jesus Christ and His gospel for over 46 years. He has served a number of Presbyterian congregations in California, Union Church of Manila in the Philippines, and the historic First Baptist Church in the heart of Vancouver, Canada.\nIn addition to writing a major work on preaching, “The Glory of Preaching: Participating in God’s Transformation of the World,” many of his sermon series have been published in book form, including “Fifty-Seven Words That Change the Word: A Journey Through the Lord’s Prayer,” “The Beatitudes: Living in Sync with the Reign of God,” “Who is Jesus?” and “Discipleship on the Edge: An Expository Journey through the Book of Revelation.” Darrell has also taught preaching for Fuller Theological Seminary in Pasadena, California, Regent College and Carey Theological College in Vancouver, British Columbia, and is now serving as Teaching Fellow at Regent.\n\n\nHe is married to Sharon Lynette, and together they have raised four children, adopted from four different countries of the world, and now enjoy loving eleven active grandchildren!", "The Belonging Co is a church movement based in Nashville, TN. Since it’s inception in 2014, the church has become known as a place to find freedom, breakthrough, and healing through God’s Word, His presence and worship.\n The heart of The Belonging Co is that every song released would empower both individuals and the collective body of Christ to encounter God through worship, and experience the freedom that comes through knowing Jesus.\n\n\nWe desire encounter over entertainment, intimacy over industry, presence over presentation, people over position… And most of all JESUS over everything.", "More info to come soon", "More info to come soon"];
  List<String> speakerimage=["assets/images/henry+seeley.jpg", "assets/images/banning.jpg", "assets/images/robert.jpg", "assets/images/darrell.jpg", "assets/images/tbco.jpg", "assets/images/leadership.jpg", "assets/images/talks.jpg"];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        'assets/images/menu_bg.jpg',
    ),
    fit: BoxFit.fill,
    )
    ),
    ),

      PlatformScaffold(
        backgroundColor: Colors.transparent,
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled){
              return <Widget>[
                SliverAppBar(
              expandedHeight: 130.0,
                  backgroundColor: Color(0xFF212121),
                  floating: false,
                  pinned:true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 4,),
                        Text('Saints & Comrades',
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
              itemBuilder: (BuildContext context, int index){
                return Container(
                    height:160,
                    child: SpeakerCell(
                        speakers[index],
                        speakerimage[index],
                            (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context){
                                return SpeakerDetailScreen(
                                    speakers[index],
                                    speakerimage[index],
                                    speakerinfo[index]
                                );
                              }
                          ));

                        })

                );
              },

            )
        ),

    )
    ]);
  }
}


