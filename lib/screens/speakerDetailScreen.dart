import 'package:flutter/material.dart';

class SpeakerDetailScreen extends StatefulWidget {
  const SpeakerDetailScreen(
      this.speakerName, this.speakerImage, this.speakerInfo);

  final String speakerName;
  final String speakerImage;
  final String speakerInfo;

  @override
  SpeakerDetailScreenState createState() =>
      SpeakerDetailScreenState(speakerName, speakerImage, speakerInfo);
}

class SpeakerDetailScreenState extends State<SpeakerDetailScreen> {
  SpeakerDetailScreenState(
      this.speakerName, this.speakerImage, this.speakerInfo);

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
                      child: Text(
                        speakerInfo,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.left,
                      ))
                ]),
              )
            ],
          ))
    ]);
  }
}
