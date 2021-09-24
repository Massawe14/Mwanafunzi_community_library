import 'package:flutter/material.dart';

// Pages
import '../components/Constants.dart';
import '../pages/contacts.dart';
import '../pages/feedback.dart';
import '../pages/about.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Notes'),
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
