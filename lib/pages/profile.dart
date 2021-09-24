import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Pages
import '../components/Constants.dart';
import '../pages/contacts.dart';
import '../pages/feedback.dart';
import '../pages/about.dart';
import '../pages/edit_profile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Profile'),
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

      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset('images/profile.jpeg'),
          ),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            initialChildSize: 0.22,
            builder: (context, scrollcontroller){
              return SingleChildScrollView(
                controller: scrollcontroller,
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height,
                  ),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15.0, right: 10.0, top: 32.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: ClipOval(
                                child: Image.asset('images/user.jpg', fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Ramadhani Massawe',
                                    style: TextStyle(
                                      color: Colors.grey[800],
                                      fontFamily: "Roboto",
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Text(
                                    'Mobile Application Developer',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontFamily: "Roboto",
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //Icon(Icons.sms, color: Colors.blue, size: 40.0)
                            //SizedBox(),
                              Container(
                                height: 42.0,
                                width: 80.0,
                                child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  shadowColor: Colors.blueAccent,
                                  color: Colors.blue,
                                  elevation: 5.0,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => new EditProfile()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'EDIT',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Roboto'
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Divider(height: 70.0),
                      Padding(padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 0.0)),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Text(
                            'First Name:',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              fontSize: 18.0
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Ramadhani J',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 50.0),
                      Padding(padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 5.0)),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Text(
                            'Last Name:',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 18.0
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Massawe',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 50.0),
                      Padding(padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 5.0)),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Text(
                            'Email:',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'ramadhanimassawe14@gmail.com',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 50.0),
                      Padding(padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 5.0)),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Text(
                            'Phone Number:',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 18.0
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            '+255764073294',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 50.0),
                      Padding(padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 5.0)),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Text(
                            'Country:',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 18.0
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Tanzania',
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                fontSize: 17.0
                            ),
                          ),
                        ],
                      ),
                      Divider(height: 50.0),
                    ],
                  ),
                ),
              );
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
