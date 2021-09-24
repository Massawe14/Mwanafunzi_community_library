import 'package:flutter/material.dart';

// Pages
import '../pages/secondary_books.dart';
import '../pages/primary_books.dart';
import '../pages/story_books.dart';
import '../components/Constants.dart';
import '../pages/contacts.dart';
import '../pages/about.dart';
import '../pages/feedback.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Books'),
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

      body: new Column(
        children: <Widget>[
          new Padding(padding: const EdgeInsets.all(10.0)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new PrimaryBooks()));
              },
              child: Container(
                //width: MediaQuery.of(context).size.width,
                width: 320.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Color(0xFFD3D3D3)
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2.0,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.local_library, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Center(
                          child: Text('PRIMARY BOOKS', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20.0),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Padding(padding: const EdgeInsets.all(6.0)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new SecondaryBooks()));
              },
              child: Container(
                //width: MediaQuery.of(context).size.width,
                width: 320.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFD3D3D3)),
                  borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2.0,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.library_books, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Center(
                          child: Text('SECONDARY BOOKS', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20.0),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Padding(padding: const EdgeInsets.all(6.0)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new StoryBooks()));
              },
              child: Container(
                //width: MediaQuery.of(context).size.width,
                width: 320.0,
                height: 150.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFD3D3D3)),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2.0,
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Icon(Icons.history, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 20),
                      Center(
                          child: Text('STORY BOOKS', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 20.0),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
