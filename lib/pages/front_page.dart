import 'package:flutter/material.dart';
import 'dart:async';

// Page
import '../pages/signin.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
        (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[300],
      body: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(120.0)),
            /*Center(
              child: Container(
                  height: 150.0,
                  width: 150.0,
                  child: Image.asset("images/icons/Library_black.png")
              ),
            ),*/
            //new Padding(padding: const EdgeInsets.all(1.0)),
            Center(
              child: Container(
                  child: Text('McL', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.blue))
              ),
            ),
            new Padding(padding: const EdgeInsets.all(2.0)),
            Center(
              child: Container(
                  child: Text('Mwanafunzi Community Library', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.grey[600]))
              ),
            ),
            new Padding(padding: const EdgeInsets.all(4.0)),
            Center(
              child: Container(
                  child: Text('The Center for excellence', style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.grey[600]))
              ),
            ),
          ],
        ),
      );
  }
}
