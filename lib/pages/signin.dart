import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:getwidget/getwidget.dart';


// Pages
import '../components/homescreen.dart';
import '../pages/signup.dart';
import '../pages/forgot_password.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  // For CircularProgressIndicator.
  // bool visible = false;

  // Getting value from TextField widget.
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  // Future userLogin() async{

  //   // Showing CircularProgressIndicator.
  //   setState(() {
  //     visible = true;
  //   });

  //   // Getting value from Controller
  //   String email = emailController.text;
  //   String password = passwordController.text;

  //   // SERVER LOGIN API URL
  //   var url = 'http://10.0.2.2/McLDB/login.php';

  //   // Store all data with Param Name.
  //   var data = {'email': email, 'password' : password};

  //   // Starting Web API Call.
  //   var response = await http.post(url, body: json.encode(data));

  //   // Getting Server response into variable.
  //   var message = jsonDecode(response.body);

  //   // If the Response Message is Matched.
  //   if(message == 'Login Matched'){

  //     // Hiding the CircularProgressIndicator.
  //     setState(() {
  //       visible = false;
  //     });

  //     // Navigate to Profile Screen & Sending Email to Next Screen.
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));

  //   }else{

  //     // If Email or Password did not Matched.
  //     // Hiding the CircularProgressIndicator.
  //     setState(() {
  //       visible = false;
  //     });

  //     // Showing Alert Dialog with Response JSON Message.
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context){
  //         return AlertDialog(
  //           title: new Text(message),
  //           actions: <Widget>[
  //             TextButton(
  //               child: new Text('OK'),
  //               onPressed: (){
  //                 Navigator.of(context).pop();
  //               }
  //             )
  //           ],
  //         );
  //       }
  //     );

  //   }

  // }

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  String msg ='';

  Future<List> _login() async {
    final response = await http.post("https://10.0.2.2/McLDB/signin.php", body: {
      "email": email.text,
      "password": password.text,
    });

    var datauser = json.decode(response.body);

    if(datauser.length==0){
      setState(() {
        msg ="Login Fail";
      });
    }else{
      // if(datauser[0]['level']=='admin'){
      //   Navigator.pushReplacementNamed(context, '/AdminPage');
      // }else if(datauser[0]['level']=='member'){
      //   Navigator.pushReplacementNamed(context, '/MemberPage');
      // }

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));

      setState(() {
        email = datauser[0]['email'];
      });

    }

    return datauser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                    child: Text(
                      'Mwanafunzi Community',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 180.0, 0.0, 0.0),
                    child: Text(
                      'Library',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(140.0, 134.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autocorrect: true,
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)
                      )
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    autocorrect: true,
                    controller: password,
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)
                        )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                      child: Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue[600],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  GFButton(
                    onPressed: (){
                      _login();
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                    },
                    text: "LOGIN",
                    shape: GFButtonShape.pills,
                    blockButton: true,
                    size: GFSize.LARGE,
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text('Sign up',
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
