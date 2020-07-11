import 'package:flutter/material.dart';


//// my custom colors////////////////////////{ // Note - 2020y06m17d 09:03:37 - RRF - I still don't know how to make this variable globals
var openCfg = 0;
String configLabel = "show config ^";
var myPurple =  Color(0xFF8866CC); // "Colors.deepPurple[400]"" is actually, quite similar.
var panelGray =  Color(0xFFE2E0E9);
var concreteGray =  Color(0xFF9EA69B);
var displayGray =  Color(0xFFCAD3C8);
var commonButtons =  Color(0xFFC2C0C8);
var operatorButtons =  Color(0xFFA8BAC8);
var specialButtons =  Color(0xFFC89494);
var functionButtons =  Color(0xFFA8BAC8);

var calculatorBody =  panelGray;
var calculatorLabelText =  Colors.black;
var buttonsBorders =  Colors.grey[700];
var commonButtonsText =  Color(0xFF000000);
var operatorButtonsText =  Color(0xFF000000);
var specialButtonsText =  Color(0xFF000000);
var functionButtonsText =  Color(0xFF000000);

var cardInnerCanvasThinBorder = myPurple;
/////////////////////////////////////////////}

//// CustomDecorations //////////////////////{
BoxDecoration decorationTester() {
  return BoxDecoration(
    border: Border.all(
      width: 2.0,
      color: Colors.red,
    ),
//    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  );
}

FlutterLogoDecoration logoDecoration (){// Note - 2020y06m17d 11:00:14 - RRF - pending
return FlutterLogoDecoration();
}

BoxDecoration logoAreaDecoration() {
  return BoxDecoration(
//    color: Colors.teal[50],
    color: displayGray,

    // border: Border.all(
//      color: Color(0xFF000000),
      // color: Color(0xFF444433),
      // width: 3.0
    // ),
    // borderRadius: BorderRadius.all(
    //   Radius.circular(8.0) //         <--- border radius here
    // ),

    //unfortunately, the "BorderSide" doesn't work along with "BorderRadius"
    /*    border: Border(
      left: BorderSide(
        color: Color(0x22000000),
        width: 8.0,
      ),
      top: BorderSide(
        color: Color(0x22000000),
        width: 8.0,
      ),
      right: BorderSide(
        color: Color(0x22FFFFFF),
        width: 8.0,
      ),
      bottom: BorderSide(
        color: Color(0x22FFFFFF),
        width: 8.0,
      ),
    ),
*/

  );
}
BoxDecoration cardLoginScreen() {
  
  return BoxDecoration(
    color: Colors.white,
    // border: Border.all(
    //   color: Color(0xFF000000), // for testing only
    //   width: 1.0, // for testing only
    // ),
    borderRadius: BorderRadius.all(
      Radius.circular(16.0)
    ),
  );
}
BoxDecoration cardThinFrame() {
  return BoxDecoration(
    border: Border.all(
      width: 1.0,
      color: cardInnerCanvasThinBorder,
    ),
//    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  );
}

/////////////////////////////////////////////}
