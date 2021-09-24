import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mwanafunzi_community_library/pages/books.dart';
import 'package:mwanafunzi_community_library/pages/exams.dart';
import 'package:mwanafunzi_community_library/pages/notes.dart';
import 'package:mwanafunzi_community_library/pages/videos.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new Books()));
                    },
                    child: getViewCard('images/icons/Book_Shelf.png', 'BOOKS')
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new Exams()));
                    },
                    child: getViewCard('images/icons/Test_Passed.png', 'PAST PAPERS')
                ),
              ],
            ),
            Column(
              children: <Widget>[
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new Videos()));
                    },
                    child: getViewCard('images/icons/Video_Playlist.png', 'VIDEOS')
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new Notes()));
                    },
                    child: getViewCard('images/icons/Note.png', 'NOTES')
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget getViewCard(
      String imgPath, String viewName){
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
        child: Container(
          height: 180.0,
          width: (MediaQuery.of(context).size.width / 2) - 20.0,
          decoration: BoxDecoration(
            //color: Color(0xFFD3D3D3),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.0,
              ),
            ]
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 125.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath)
                      )
                    ),
                  )
                ],
              ),
              SizedBox(height: 1.0),
              Text(viewName,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              )
            ],
          ),
        ),
    );
  }
}
