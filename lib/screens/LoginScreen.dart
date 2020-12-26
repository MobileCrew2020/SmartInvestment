import 'package:SmartInvestment/controllers/gmail_sign_in.dart';
import 'package:SmartInvestment/controllers/sign_up_firebase.dart';
import 'package:SmartInvestment/controllers/valid_signed.dart';
import 'package:flutter/material.dart';
import './SignUpScreen.dart';
import './MenuScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.teal[900],
          Colors.teal[700],
          Colors.teal[500],
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Smart Investment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 150, 150, 0.25),
                                  blurRadius: 30,
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.teal[100]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 17,
                                          fontStyle: FontStyle.italic),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.teal[100]))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 17,
                                          fontStyle: FontStyle.italic),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        FlatButton(
                          onPressed: () {
                            print(
                                "Forgot Password Tapped"); // handle your onTap here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuScreen()),
                            );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),

                        RaisedButton.icon(
                          textColor: Colors.white,
                          color: Colors.greenAccent[400],
                          onPressed: () {
                            print("Login Pressed"); // handle your onTap here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuScreen()),
                            );
                          },
                          icon: Icon(Icons.login, size: 30),
                          label: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ), // LOGIN
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.cyanAccent[700]),
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                print(
                                    "Sign Up Tapped"); // handle your onTap here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()),
                                );
                                //Navigator.push(SignUpPage);
                              },
                            ),
                          ],
                        ), // Sign Up
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Sign in with social media",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue[700]),
                                  child: Center(
                                    child: Text(
                                      "Facebook",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  print("Facebook Tapped");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FacebookLogin()),
                                  );
                                },
                              ),
                            ), // Facebook
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              child: GestureDetector(
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red[700]),
                                  child: Center(
                                    child: Text(
                                      "Gmail",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  print(
                                      "Gmail Tapped"); // handle your onTap here
                                  signInWithGoogle().then((result) {
                                    if (result != null) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return FirstScreen();
                                          },
                                        ),
                                      );
                                    }
                                  });
                                },
                              ),
                            ), // Gmail
                          ],
                        ), //Gmail+Facebook
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
