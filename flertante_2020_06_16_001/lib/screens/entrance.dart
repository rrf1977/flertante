import 'package:flutter/material.dart';
import '../style_and_decorations.dart';
import 'login.dart';
import '../sketches/login_auth.dart';

//// EntranceScreen//////////////////////////{
class Entrance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Material(
      child:
      InkWell(
        onTap: () {
          print("tapped on entrance; now entering...."); // console testing
          // Navigator.pushNamed(context, '/pageLogin');// Note - 2020y06m17d 10:13:13 - RRF - the "routes navigation" stopped working. Why?
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginFrontPage()));
            // MaterialPageRoute(builder: (context) => LoginPage()));

          },
        child: Container(
          color: concreteGray,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 80.0,horizontal: 60.0),
              decoration: cardLoginScreen(),
              // color: Colors.white,
              child: Container(
                decoration: cardThinFrame(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      // height: 155.0,
                         child: Image.asset(
                            "lib/images/bitmaps/flertante_logo_001.png",
                           fit: BoxFit.contain,
                         ),

                        // child: Container(
                        //   decoration: logoAreaDecoration(),
                        //   //color: Colors.black,
                        //   child: Text("LOGO HERE\n(under construction)") // an improvised logo, meanwhile I couldn't set "assets"
                        // ),

                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      )
    )
  ;
  }
}
/////////////////////////////////////////////}
