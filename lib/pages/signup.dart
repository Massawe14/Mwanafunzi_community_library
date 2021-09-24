import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:getwidget/getwidget.dart';

// Pages
import '../pages/signin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController firstname = new TextEditingController();
  TextEditingController lastname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Future _signup() async {

    final response = await http.post("http://10.0.2.2/McLDB/signup.php", body: {
        "firstname": firstname.text,
        "lastname": lastname.text,
        "email": email.text,
        "phonenumber": phonenumber.text,
        "password": password.text,
     });

     print(response.body);

     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 60.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(135.0, 15.0, 0.0, 0.0),
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
            padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: firstname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'FIRST NAME',
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
                SizedBox(height: 5.0),
                TextFormField(
                  controller: lastname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'LAST NAME',
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
                SizedBox(height: 5.0),
                TextFormField(
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
                SizedBox(height: 5.0),
                TextFormField(
                  controller: phonenumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: 'PHONE NUMBER',
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
                SizedBox(height: 5.0),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
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
              ],
            ),
          ),
          SizedBox(height: 20.0),
          GFButton(
            onPressed: (){
              _signup();
              firstname.text = "";
              lastname.text = "";
              email.text = "";
              phonenumber.text = "";
              password.text = "";
            },
            text: "SIGNUP",
            shape: GFButtonShape.pills,
            blockButton: true,
            size: GFSize.LARGE,
          ),
          SizedBox(height: 10.0),
          GFButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            text: "BACK",
            shape: GFButtonShape.pills,
            type: GFButtonType.outline,
            size: GFSize.LARGE,
            blockButton: true,
          ),
        ],
      ),
    );
  }
}
