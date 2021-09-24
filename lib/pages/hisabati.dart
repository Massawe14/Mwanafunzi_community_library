import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mwanafunzi_community_library/components/Constants.dart';

//Pages
import '../pages/about.dart';
import '../pages/contacts.dart';
import '../pages/feedback.dart';

class Hisabati extends StatefulWidget {
  @override
  _HisabatiState createState() => _HisabatiState();
}

class _HisabatiState extends State<Hisabati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Hisabati'),
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

