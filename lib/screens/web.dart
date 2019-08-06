import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatefulWidget{
  const Web(this.title, this.url);

  final String title;
  final String url;

  @override
  WebState createState() => WebState(title,url);
}

class WebState extends State<Web>{
  WebState(this.title, this.url);
  String title;
  String url;
  Color bG = Colors.black;
  int currIndex = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF2d2d2d),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Helvetica'
          ),

        )
      ),
      body: IndexedStack(
        index: currIndex,
      children:[
       WebView(
        initialUrl: url,
        onPageFinished: (finish){
          setState(() {
            bG = Colors.transparent;
            currIndex = 0;
          });
        },
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){

        },
      ),

        Center(
        child:
         Container(
           color: bG,
          alignment: FractionalOffset.center,
            child: CircularProgressIndicator( backgroundColor: Color(0xFFffff00),)
        )

      ),
      ])
    );
  }
}