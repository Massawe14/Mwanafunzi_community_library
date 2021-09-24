import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('About'),
      ),

      body: new Column(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(50.0)),
          Center(
            child: Container(
                child: Text('Mwanafunzi Community Library', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, fontSize: 20.0))
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Center(
            child: Container(
                height: 120.0,
                width: 120.0,
                child: Image.asset('images/icons/logo.png')
            ),
          ),
          new Padding(padding: const EdgeInsets.all(8.0)),
          Center(
            child: Container(
                child: Text('Version 1.0.0', style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0))
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ImageIcon(AssetImage('images/icons/Copyright.png')),
              ),
              SizedBox(width: 4.0),
              Center(
                child: Text("2019 - 2020 Manafunzi Community Library",
                  style: TextStyle(fontFamily: 'Quicksand',
                      //color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
