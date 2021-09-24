import 'package:flutter/material.dart';

// Pages
import '../pages/contacts.dart';
import '../pages/feedback.dart';
import '../pages/about.dart';
import '../components/Constants.dart';

class SecondaryBooks extends StatefulWidget {
  @override
  _SecondaryBooksState createState() => _SecondaryBooksState();
}

class _SecondaryBooksState extends State<SecondaryBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Secondary Books'),
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

        resizeToAvoidBottomInset: false,
        body: ListView(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(10.0)),
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
                  child: Text("MATHEMATICS",
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
                  child: Text("BIOLOGY",
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
                  child: Text("GEOGRAPHY",
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
                  child: Text("ENGLISH",
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
                  child: Text("BIOLOGY",
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
                  child: Text("HISTORY",
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
                  child: Text("CHEMISTRY",
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
              child: InkWell(
                onTap: (){},
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
                    child: Text("PHYSICS",
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
              child: InkWell(
                onTap: (){},
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
                    child: Text("B/KEEPING",
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
              child: InkWell(
                onTap: (){},
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
                    child: Text("COMMERCE",
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
