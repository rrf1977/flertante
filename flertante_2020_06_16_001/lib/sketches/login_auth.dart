/*import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../screens/listing_users_implementing.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
                // onSaved: (input) => _email = input,
                onChanged: (input) => _email = input,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                // onSaved: (input) => _password = input,
                onChanged: (input) => _password = input,
                obscureText: true,
              ),
              RaisedButton(
                onPressed: (){
                  loginUser();
                  // print("custom error: $_email , $_password"); // Note - 2020y07m10d 18:21:22 - RRF - help from Victor
                },
                child: Text('Sign in'),
              ),
            ],
          )
      ),
    );
  }

  // ignore: missing_return // Note - 2020y07m10d 15:34:30 - RRF - what?????
  Future<FirebaseUser> loginUser() async {
    print("custom error: $_email , $_password"); // Note - 2020y07m10d 18:21:22 - RRF - help from Victor
    try {
       await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
      Navigator.push(context, MaterialPageRoute(builder: (context) => ListingUsers()));
      // since something changed, let's notify the listeners...
    }  catch (e) {
      // throw the Firebase AuthException that we caught
      print("error: ${e}"); // for testing in the console.
      // throw new AuthException(e.code, e.message);
    }
  }
}*/