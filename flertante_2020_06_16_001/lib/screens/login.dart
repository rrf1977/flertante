import 'package:flutter/material.dart';
import '../style_and_decorations.dart';
import 'listing_users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

/// LoginScreen ////////////////////////////{
 class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,// Color(0xff8866cc), // WHY?????
      ),
      home: LoginFrontPage(title: 'Flutter Login'),
    );
  }
}

class LoginFrontPage extends StatefulWidget {
  LoginFrontPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginFrontPageState createState() => _LoginFrontPageState();
}

class _LoginFrontPageState extends State<LoginFrontPage> {
  TextStyle style = TextStyle(/*fontFamily: 'Roboto', */fontSize: 20.0);// Note - 2020y06m17d 10:11:36 - RRF - fontFamily seems not to be working
  String _email, _password;

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "e-mail",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          onChanged: (input) => _email = input,

    );

    final passwordField = TextFormField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
          onChanged: (input) => _password = input,
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff8866cc),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // Navigator.pushNamed(context, '/pageListingUsers');// Note - 2020y06m17d 10:13:13 - RRF - the "routes navigation" stopped working. Why?

        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => ListingUsers()));

          loginUser();// Note - 2020y07m10d 21:44:22 - RRF - authentication implementation.
          // print("custom error: $_email , $_password"); // Note - 2020y07m10d 18:21:22 - RRF - help from Victor
          },
        child: Text("entrar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: concreteGray,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 60.0),
              decoration: cardLoginScreen(),
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Container(
                      decoration: logoAreaDecoration(),
                      //color: Colors.black,

                      child: Image.asset(
                        "lib/images/bitmaps/flertante_logo_001.png",
                        fit: BoxFit.contain,
                      ),

                      // child: Text("LOGO HERE\n(under construction)") // an improvised logo, meanwhile I couldn't set "assets"
                    ),
                  ),
                  SizedBox(height: 15.0),
                    emailField,
                  SizedBox(height: 15.0),
                    passwordField,
                  SizedBox(height: 15.0),
                    loginButon,
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ),
        ),
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

}
/////////////////////////////////////////////}

