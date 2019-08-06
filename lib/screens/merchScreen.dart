import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class MerchScreen extends StatefulWidget {
//  const MerchScreen(this.merchName, this.merchImage, this.merchInfo);
//
//  final String merchName;
//  final String merchImage;
//  final String merchInfo;
//
  @override
  MerchScreenState createState() => MerchScreenState();
}
class MerchScreenState extends State<MerchScreen> {
//  MerchScreenState(this.merchName, this.merchImage, this.merchInfo);
//
//  final String merchName;
//  final String merchImage;
//  final String merchInfo;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2d2d2d) ,
      appBar:AppBar(
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF2d2d2d),
        title: Text(
          '+++CONFERENCE LINE+++',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Helvetica'
          ),
        ),
      ),
//      old body
//      body: Center(
//        child: Text(
//          "Merch Screen",
//          style: TextStyle(
//            color:Colors.black,
//            fontSize: 18,
//          ),
//        ),
//      ),
//        body: CustomScrollView(
//          slivers: <Widget>[
//            SliverAppBar(
//              leading: IconButton(
//                icon: Icon(Icons.arrow_back_ios),
//                color: Colors.white,
//                onPressed: (){
//                  Navigator.pop(context);
//                },
//              ),
//              expandedHeight: 250,
//              flexibleSpace: FlexibleSpaceBar(
//                background: Container(
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage("images/banning.jpg"),
//                      fit: BoxFit.fitHeight,
//                    ),
//                  ),
//
//                  child: Padding(
//                    padding: EdgeInsets.only(top:230, left: 10),
//                    child: Text(
//                      "merchName",
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 25,
//                      ),
//                      textAlign: TextAlign.start,
//                      softWrap: true,
//                    ),
//                  ),
//                ),
//              ),
//              floating: true,
//            ),
//            SliverList(
//              delegate: SliverChildListDelegate([
//                Padding(
//                    padding: EdgeInsets.only(top:10),
//                    child: Text(
//                      "merchInfo",
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 20
//                      ),
//                      textAlign: TextAlign.center,
//                    )
//                )
//              ]),
//            )
//          ],
//        )
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                floating: true,
                // pinned: true,
                elevation: 10.0,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/merch_placeholder.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                )
            ),
            SliverPadding(
                padding: EdgeInsets.only(top: 10, right:5, left: 5),
                sliver: SliverGrid(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      childAspectRatio: .60,
                    ),
                    delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.black54
                            ),
                            //color: Colors.purple[100 * (index % 9)],
                            child: Text('Merch Item: $index',
                            style: TextStyle(
                              color: Colors.white
                            ),),
                          );
                        }, childCount: 9)
                )
            )
          ]
      ),
    );
  }
}