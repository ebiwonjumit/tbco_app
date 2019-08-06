import 'package:flutter/material.dart';

class SpeakerDetailScreen extends StatefulWidget {

  const SpeakerDetailScreen(this.speakerName, this.speakerImage, this.speakerInfo);

  final String speakerName;
  final String speakerImage;
  final String speakerInfo;


  @override
  SpeakerDetailScreenState createState() => SpeakerDetailScreenState(speakerName, speakerImage, speakerInfo);
}

class SpeakerDetailScreenState extends State<SpeakerDetailScreen> {
  SpeakerDetailScreenState(this.speakerName, this.speakerImage, this.speakerInfo);

  final String speakerName;
  final String speakerImage;
  final String speakerInfo;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(speakerImage),
                      fit: BoxFit.fitHeight,
                    ),
                  ),

                  child: Padding(
                    padding: EdgeInsets.only(top:230, left: 10),
                    child: Text(
                        speakerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Respira'
                      ),
                      textAlign: TextAlign.start,
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
                  padding: EdgeInsets.only(top:10),
                  child: Text(
                  speakerInfo,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                )
                )
              ]),
            )
          ],
        )

    );
  }
}