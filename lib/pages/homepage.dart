import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:mwanafunzi_community_library/components/homeview.dart';
import 'package:mwanafunzi_community_library/pages/contacts.dart';
import 'package:mwanafunzi_community_library/pages/about.dart';
import 'package:mwanafunzi_community_library/pages/signin.dart';
import 'package:mwanafunzi_community_library/components/constants_2.dart';
import 'package:mwanafunzi_community_library/pages/feedback.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpeg'),
          AssetImage('images/c2.jpeg'),
          AssetImage('images/c3.jpeg'),
          AssetImage('images/c4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('McL App'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants_2.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          // Image Carousel Begin
          imageCarousel,

          // Grid View
          Flexible(child: HomeView()),

        ],
      ),
    );
  }

  void choiceAction(String choice){
    if(choice == Constants_2.Contacts){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new Contacts()));
    }else if(choice == Constants_2.About){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new About()));
    }else if(choice == Constants_2.Feedback){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new FeedBack()));
    }else if(choice == Constants_2.Logout){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => new SignIn()));
    }
  }
}