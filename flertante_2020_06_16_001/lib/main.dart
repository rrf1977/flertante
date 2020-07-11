import 'package:flutter/material.dart';
// import 'dart:math'; // used for random so far
import 'package:flutter/rendering.dart'; // for random numbers
// import 'package:flutter_svg/flutter_svg.dart';// Note - 2020y06m17d 10:36:58 - RRF - not working!!!

//// classes from parallel scopes ///////////{
// import "names_generator.dart";
// import "occupation_generator.dart";
import "person.dart";
import './screens/entrance.dart';
import './screens/login.dart';
// import 'sketches/login_auth.dart';// Note - 2020y07m10d 15:31:17 - RRF - implementing
import 'screens/listing_users.dart';
import 'style_and_decorations.dart';
import './screens/search_nearby.dart';
import './screens/person_profile.dart';
/////////////////////////////////////////////}

// Note - 2020y07m10d 08:11:01 - RRF - moved to names_generator.dart
  // String getNames(int code){ }

// Note - 2020y07m10d 08:12:58 - RRF - moved to occupation_generator.dart
  // String getOccupations(int code){ }

// Note - 2020y07m10d 08:17:10 - RRF - moved do person.dart
  // Person()

void mainAux() { // testing functionalities in the console
  List<Person>people = [];
  int radiusDistance = 50;

  int concise = 0;

  for (int i = 0; i < radiusDistance; i++) {
//    print('hello ${i + 1}');
      Person p = new Person();
      people.add(p);
      // console version:
      //// testing how they will be listed:
      if (concise == 0){
        print("[foto] ${p.getFullName}, ${p.getAge} anos."); // for testing in the console.
        // print("\tinformações adicionais: altura: ${p.height/100} m; peso: ${p.weight} kilos."); // for testing in the console.
      }
      //// testing how they will look like when opened:
      else if (concise == 1) {
        print("\t--------\n\t| foto |\n\t--------\nNome: ${p.getFullName}\nIdade ${p.getAge} anos\nAltura: ${p.height/100} m\nPeso: ${p.weight} kilos\nProfissão: ${p.occupation}"); // for testing in the console.
      }
      print("_"*40);
  }
}

//// my custom colors////////////////////////{ // Note - 2020y06m17d 09:03:37 - RRF - I still don't know how to make this variable globals
// Note - 2020y07m10d 09:41:39 - RRF - moved to styles_and_decorations.dart
/////////////////////////////////////////////}

//// ChoosePeople //////////////////////////////{  
// // Note - 2020y07m10d 23:26:31 - RRF - not implemented yet.
/////////////////////////////////////////////}

//// ListingUsers ///////////////////////////{
// Note - 2020y07m10d 09:17:25 - RRF - moved to ./screens/listing_users.dart
/////////////////////////////////////////////}

//// SearchNearBy////////////////////////////{
// Note - 2020y07m10d 10:15:07 - RRF - moved to search_nearby.dart
/////////////////////////////////////////////}

//// PersonProfile///////////////////////////{
// Note - 2020y07m10d 10:51:17 - RRF - moved do ./screens/person_profile.dart
/////////////////////////////////////////////}

//// EntranceScreen//////////////////////////{
// Note - 2020y07m10d 09:15:00 - RRF - moved to ./screens/entrance.dart
/////////////////////////////////////////////}

//// LoginScreen ////////////////////////////{
// Note - 2020y07m10d 09:14:21 - RRF - moved to ./screens/login.dart
/////////////////////////////////////////////}

//// main ///////////////////////////////////{
// void main() => runApp(ListingUsers());
void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false, 
        title: 'Navegação', 
//        home: MyApp(),// when we put "initialRoute", this one here is no longer necessary (from Professor Plotze's class of 8/may/2020).

        //Navigation routes
        initialRoute: '/pageEntrance',
        routes:{
          '/pageEntrance': (context) => Entrance(),
          '/pageLogin': (context) => LoginScreen(),
          // '/pageLogin': (context) => LoginPage(),// Note - 2020y07m10d 15:31:52 - RRF - implementing
          '/pageSearchNearBy': (context) => SearchNearBy(),
          // '/pageChoosePeople': (context) => ChoosePeople(),
          '/pagePersonProfile': (context) => PersonProfile(),
          '/pageListingUsers': (context) => ListingUsers(),
        }
    ),
  );
}
/////////////////////////////////////////////}

//// sketches ///////////////////////////////{
// Note - 2020y07m10d 09:10:03 - RRF - moved to "./sketches/sketches.dart"
/////////////////////////////////////////////}