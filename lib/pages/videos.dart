import 'package:flutter/material.dart';

// Pages
import '../components/Constants.dart';
import '../pages/contacts.dart';
import '../pages/about.dart';
import '../pages/feedback.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Videos'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.view_module,
                color: Colors.white,
              ),
              onPressed: (){}
              ),
          /*new IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: (){}
          ),*/
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){},
      ),
    );
  }

  void choiceAction(String choice){
    if(choice == Constants.Contacts){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new Contacts()));
    }else if(choice == Constants.About){
      Navigator.push(context, MaterialPageRoute(builder: (context) => new About()));
    }else if(choice == Constants.Feedback){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => new FeedBack()));
    }
  }
}
