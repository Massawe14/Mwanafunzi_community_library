import 'package:flutter/material.dart';

// Pages
import '../components/Constants.dart';
import '../pages/contacts.dart';
import '../pages/feedback.dart';
import '../pages/about.dart';
import '../pages/hisabati.dart';

class PrimaryBooks extends StatefulWidget {
  @override
  _PrimaryBooksState createState() => _PrimaryBooksState();
}

class _PrimaryBooksState extends State<PrimaryBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Primary Books'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(10.0)),
          Center(
            child: InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => new Hisabati()));
              },
              child: Container(
                width: 340.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Color(0xFF3D3D3),
                      //style: BorderStyle.solid,
                      //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
                ),
                child: Center(
                  child: Text("HISABATI",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("KIINGEREZA",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("KISWAHILI",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("SAYANSI",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("JIOGRAFIA",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("HISTORIA",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("URAIA",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("H/MICHEZO",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("TEHEMA",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("M/JAMII",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: 340.0,
              height: 50.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF3D3D3),
                    //style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Center(
                child: Text("S/KAZI",
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  void choiceAction(String choice){
    if(choice == Constants.Contacts){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new Contacts()));
    }else if(choice == Constants.About){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new About()));
    }else if(choice == Constants.Feedback){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new FeedBack()));
    }
  }
}
