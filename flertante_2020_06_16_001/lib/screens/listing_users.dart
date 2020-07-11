import 'package:flutter/material.dart';
import '../style_and_decorations.dart';
import '../person.dart';

//// List Attempt 1 //////////////////////////{
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

  // @override
  // Widget build(BuildContext context) {
  //   return _myListView(context);
  // }
}

class ListingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flertante',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, //.shade300, // it doesn't work! Why???
      ),
      home: Scaffold(
        backgroundColor: concreteGray,
        appBar: AppBar(title: Text('Pessoas interessantes nas proximidades')),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Container(
                    child: Text(
                      "Options",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
              ),
            ])),
        body: bodyLayout(context),
      ),
    );
  }
}
/////////////////////////////////////////////}
