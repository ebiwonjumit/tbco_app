import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  AssetImage registerBackground;


  @override
  void initState() {
    super.initState();
    registerBackground = AssetImage('images/register_background.jpg');

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2d2d2d),
          centerTitle: true,
          title: Text(
            '+++Saints And Comrades+++',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: registerBackground,
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              Text(
                '++HAVE YOU REGISTERED?++',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Helvetica', fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.white, width: 4)
                ),
                  child: FlatButton(
                textColor: Colors.white,
                color: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _launchURL,
                child: Text(
                  'REGISTER NOW',
                  style: TextStyle(fontSize: 20, fontFamily: 'Helvetica'),
                ),
              ))
            ],
          ),
        ));
  }

  _launchURL() async {
    const url = 'https://thebelongingco.brushfire.com/conference-2019/446425';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
