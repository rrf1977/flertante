import 'package:flutter/material.dart';
import '../style_and_decorations.dart';
import '../person.dart';

//// CardProfile ////////////////////////////{


/////////////////////////////////////////////}
Widget bodyLayout (BuildContext context) {
  List<Person>people = [];
  int radiusDistance = 50;

  for (int i = 0; i<radiusDistance;i++){
    people.add(Person());        
  }

  return ListView.builder(
    itemCount: people.length,
    itemBuilder: (context, index) {
      return Card( 
        color: Colors.white,
//              shape: ShapeBord(),
//             margin: EdgeInsetsGeometry(),
        child: ListTile(
          leading: Icon(Icons.people, color: Colors.deepPurple.shade300),
          title: Text("${people[index].getFullName}, ${people[index].getAge} anos"),
        ),
      );
    },
  );
}
