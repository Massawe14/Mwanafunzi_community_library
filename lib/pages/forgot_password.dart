import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:toast/toast.dart';

// Pages
import '../pages/signin.dart';
import '../components/credential.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();

  String verifyLink;
  bool verifyButton = false;

  Future checkEmail() async {
    var response = await http.post('http://10.0.2.2/McLDB/changepassword.php', body: {
      "email": email.text,
    });
    var link = json.decode(response.body);
    if (link == "Invalid user") {
      showToast('User not found', gravity: Toast.CENTER, duration: 6);
    } else {
      sendMail();
      setState(() {
        verifyLink = link;
        verifyButton = true;
      });
      showToast('Click Verify Button to reset Password',
          gravity: Toast.CENTER, duration: 4);
    }
    print(link);
  }

  int newPass = 0;
  Future resetPassword(String verifyLink) async {
    var response = await http.post(verifyLink);
    var link = json.decode(response.body);
    setState(() {
      newPass = link;
      verifyButton = false;
    });
    print(link);
    showToast('Your password has been reset : $newPass',
        gravity: Toast.CENTER, duration: 4);
  }

  sendMail() async {
    String username = EMAIL;
    String password = PASS;

    // ignore: deprecated_member_use
    final smtpServer = gmail(username, password);
    // Creating the Gmail server

    // Create our email message.
    final message = Message()
      ..from = Address(username)
      ..recipients.add('ramadhanimassawe14@gmail.com') //recipient email
      ..subject =
          'Password recover link from massawedeveloper : ${DateTime.now()}' //subject of the email
      ..html =
          "<h3>Thanks for with localhost please click this link to reset your password</h3>\n<p> <a href='$verifyLink'>Click me to reset</a></p>"; //body of the email

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' +
          sendReport.toString()); //print if the email is sent
    } on MailerException catch (e) {
      print('Message not sent. \n' +
          e.toString()); //print if the email is not sent
      // e.toString() will show why the email is not sending
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                  child: Text(
                    'Recover your',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 135.0, 0.0, 0.0),
                  child: Text(
                    'Password here',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(212.0, 82.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  // obscureText: true,
                ),
                SizedBox(height: 55.0),
                Container(
                  height: 42.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        checkEmail();
                        email.text = "";
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Center(
                        child: Text(
                          'RECOVER PASSWORD',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
                verifyButton
                    ? MaterialButton(
                        color: Colors.amber,
                        onPressed: () {
                          resetPassword(verifyLink);
                        },
                        child: Text('VERIFY'),
                      )
                    : Container(),
                newPass == 0 ? Container() : Text('New password is : $newPass'),
                SizedBox(height: 30.0),
                Container(
                  height: 45.0,
                  width: 350.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignIn()));
                        // email.text = "";        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              'CANCEL',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey[600]
                                  //color: Colors.blue
                                  ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
