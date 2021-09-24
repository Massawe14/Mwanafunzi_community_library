import 'package:flutter/material.dart';


class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (c) => AlertDialog(
          title: Text('Exit'),
          content: Text('Do you really want to exit?'),
          actions: <Widget>[
            TextButton(
              child: Text(
                  'Yes',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: () => Navigator.pop(c, true),
            ),
            TextButton(
              child: Text(
                'No',
                style: TextStyle(
                    color: Colors.red,
                ),
              ),
              onPressed: () => Navigator.pop(c, false),
            )
          ],
        )
      ),
      child: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.blue,
          title: Text('Feedback'),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.send, color: Colors.white),
              onPressed: (){},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Send us your feedback! We may not get the \nchance to reply to all feedback emails, but we \nare looking at them and value your input!',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Title (Optional)',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: 'Description',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
