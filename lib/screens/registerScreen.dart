import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/register_background.jpg',
            fit: BoxFit.cover,
          )),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0xFF2d2d2d),
            centerTitle: true,
            title: Text(
              '+++SAINTS AND COMRADES+++',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: 'Helvetica'),
            ),
          ),
          body: Center(
              child: Container(
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
                      color: Colors.white,
                      fontFamily: 'Helvetica',
                      fontSize: 20),
                ),
                Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 4)),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: (){
                        _launchURL();
                      },
                        child: FlatButton(
                      color: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        'REGISTER NOW',
                        style: TextStyle(fontSize: 20, fontFamily: 'Helvetica', color: Colors.white),
                      ),
                    )))
              ],
            ),
          )))
    ]);
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
