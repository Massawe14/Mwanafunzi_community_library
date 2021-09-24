import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Contacts'),
      ),

      body: new Column(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(20.0)),
          /*CircleAvatar(
            backgroundColor: Colors.white,
              child: Image.asset("images/icons/logo.png")
          ),*/
          Center(
            child: Container(
                height: 120.0,
                width: 120.0,
                child: Image.asset('images/icons/logo.png')
            ),
          ),
          new Padding(padding: const EdgeInsets.all(4.0)),
          Center(
            child: Container(
                child: Text('Connect with Us',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.grey[800]
                    ),
                )
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.transparent,
                    spreadRadius: 2.0,
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: ImageIcon(AssetImage('images/icons/Website.png')),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text("www.MwanafunziCommunityLibrary.co.tz",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700
                      )
                  ),
                ),
              ],
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.transparent,
                    spreadRadius: 2.0,
                  ),
                ]
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ImageIcon(AssetImage('images/icons/Facebook_blue.png')),
              ),
              SizedBox(width: 10.0),
              Center(
                child: Text("Facebook- MwanafunziCommunityLibrary",
                  style: TextStyle(fontFamily: 'Quicksand',
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ],
          ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.transparent,
                    spreadRadius: 2.0,
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: ImageIcon(AssetImage('images/icons/Instagram.png')),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text("Instagram- MwanafunziCommunityLibrary",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700
                      ),
                  ),
                ),
              ],
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.transparent,
                    spreadRadius: 2.0,
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: ImageIcon(AssetImage('images/icons/Twitter.png')),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text("Twitter- MwanafunziCommunityLibrary",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700
                      ),
                  ),
                ),
              ],
            ),
          ),
          new Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            //width: MediaQuery.of(context).size.width,
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0
              ),
              borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    color: Colors.transparent,
                    spreadRadius: 2.0,
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: ImageIcon(AssetImage('images/icons/Phone.png')),
                ),
                SizedBox(width: 10.0),
                Center(
                  child: Text("+255656035436 / +255764073294",
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700
                      ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
