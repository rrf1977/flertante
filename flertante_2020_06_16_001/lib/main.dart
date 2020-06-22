import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart'; // for random numbers
// import 'package:flutter_svg/flutter_svg.dart';// Note - 2020y06m17d 10:36:58 - RRF - not working!!!
import 'package:flutter_svg/flutter_svg.dart';


String getNames(int code){ //code 0 to 2: 0 man name; 1 woman name; 2 family name
  Random random = new Random();
  // int randomNumber = random.nextInt(100); // from 0 upto 99 included

// these are lists I created for S.O.II, 23/may/2020
  List<String> namesFamily=[
    "Cunha",
    "Siqueira",
    "Dorneles",
    "Ribeiro",
    "Gimenes",
    "Almeida",
    "Albuquerque",
    "Ferreira",
    "Alves",
    "Nogueira",
    "Junqueira",
    "Santos",
    "Passos",
    "Dias",
    "Silva",
    "Campos",
    "Bertolini",
    "Tucci",
    "Macedo",
    "Fettuccine",
    "Capuccini",
    "Bianchini"
  ];
  List<String> namesMen=[
    "Andre",
    "Ronaldo",
    "Arnaldo",
    "Armando",
    "Alfredo",
    "Mateus",
    "Onofrio",
    "Jucelino",
    "Jair",
    "Judas",
    "Jonas",
    "Joan",
    "José",
    "Josias",
    "Jeremias",
    "Gabriel",
    "Henrique",
    "Ezequiel",
    "Abraão",
    "Jacob",
    "Daniel",
    "Natanael",
    "Josiel",
    "Gabriel",
    "Juliano",
    "Roberto",
    "Adriano",
    "Alexandre",
    "Amin",
    "Adão",
    "Josue",
    "Manuel",
    "Marcos",
    "Pedro",
    "Paulo",
    "Saulo",
    "Camilo",
    "Afonso",
    "Mauricio",
    "Maurelio",
    "Fabricio",
    "Josino",
    "Avelino",
    "Bruno",
    "João",
    "Rodrigo",
    "Romualdo",
    "Romildo",
    "Ronaldo",
    "Robervaldo",
    "Valdo",
    "Vando",
    "Wando",
    "Waldo"
  ];
  List<String> namesWomen=[
    "Amanda",
    "Ingrid",
    "Raquel",
    "Carol",
    "Paola",
    "Agda",
    "Paula",
    "Leticia",
    "Sabrina",
    "Simone",
    "Sarah",
    "Samanta",
    "Ananda",
    "Luciana",
    "Juliana",
    "Mariana",
    "Sariana",
    "Tariana",
    "Irina",
    "Helena",
    "Jelena",
    "Ielena",
    "Yelena",
    "Jennifer",
    "Aline",
    "Camila",
    "Adriana",
    "Caroline",
    "Carolina",
    "Catarina",
    "Carina",
    "Josequina",
    "Jucelina",
    "Serafina",
    "Camile",
    "Jamile",
    "Valeria",
    "Roberta",
    "Bruna",
    "Katia",
    "Catia",
    "Catiane",
    "Katiane",
    "Catiana",
    "Katiana",
    "Priscila"
  ];

  if (code == 0){
    return namesMen[random.nextInt(namesMen.length)]; 
  }
  else if (code == 1){
    return namesWomen[random.nextInt(namesWomen.length)]; 
  }
  else if (code == 2){
    return namesFamily[random.nextInt(namesFamily.length)]; 
  }
  else return "<<error>>";
}

String getOccupations(int code){ //code 0 to 2: 0 man name; 1 woman name;
  Random random = new Random();

  List<String> occupations=[
    "filósofo",
    "arquiteto",
    "engenheiro",
    "advogado",
    "médico",
    "enfermeiro",
    "empresário",
    "faxineiro",
    "cozinheiro",
    "camareiro",

    "promotor",
    "professor",
    "entregador",

    "dentista",
    "desenhista",
    "motorista",
    "musicista",

    "piloto",
    "modelo",
    "ator"
  ];

  String occupation = occupations[random.nextInt(occupations.length)];
  if (code == 1 && occupation.substring(occupation.length - 4) != "ista"){
    if (occupation.substring(occupation.length - 2) == "or" && occupation != "ator"){
      return occupation + "a";
    }
    else if (occupation == "piloto"){ //exception
      return occupation; 
    }
    else if (occupation == "modelo"){ //exception
      return occupation; 
    }
    else if (occupation == "ator"){ //exception
      return "atriz"; 
    }
    else return occupation.substring(0,(occupation.length -1)) + "a";
  }
  else return occupation; 
}

class Person{
  static Random random = new Random();
  int uin;
  static int gender = random.nextInt(2); // random 0 to 1
  String firstName = getNames(gender);
  int hasTwoNames = random.nextInt(2);
  String secondName;
  final String middleName = getNames(2);
  final String familyName = getNames(2);
  int age;
  num height = random.nextInt(51) + 140; //cms
  num weight = random.nextInt(71) + 50; //kg
  num ethnicity; //<<classified>>
  String occupation = getOccupations(gender);
  int birthYear = DateTime.now().year - (random.nextInt(23) + 18);
    int codeFamily = 2;

  //     Person({ //constructor
      //     final this.birthYear = (this.random.nextInt(23) + 18),// not working. Why??? DateTime.now().year - (this.random.nextInt(23) + 18), // set to be between from 18 to 40
//     this.gender = random.nextInt(2),
//     this.firstName = getNames(this.gender),
//     int hasTwoNames = random.nextInt(2),

//     if (hasTwoNames != 0){
//       this.secondName = this.firstName,
//       while (this.firstName == this.secondName){
//         this.secondName = getNames(this.gender),
//       }
//     }
//     this.middleName = getNames(2), // 2 for family names 
//     this.familyName = this.middleName,
//     while (this.familyName == this.middleName){
//       this.familyName = getNames(2), // 2 for family names 
//     }
//     this.height = random.nextInt(51) + 140, // set to be between from 140 to 190
//     this.weight = random.nextInt(71) + 50, // set to be between from 50 to 120
//     this.occupation = getOccupations(gender),
//   });

  int get getAge {// no setter, just the getter
   return DateTime.now().year - birthYear;
  }

  // void set age(int currentYear) { // in case of "timeline", but I can't study it right now.
  //   age = currentYear - birthYear;
  // }
  String get getFullName {// no setter, just the getter
    if (this.secondName != null){return this.firstName + " " + this.secondName + " " + this.middleName + " " + this.familyName;}
    else {return this.firstName + " " + this.middleName + " " + this.familyName;}
    //print("$fullName");
  }
}


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


//// flertante //////////////////////////////{  
// class ChoosePeople extends StatefulWidget {
//   final int radiusDistance = 50;

//   ChoosePeople(){
//     List<Person>people = [];
//     for (int i = 0; i < radiusDistance; i++) {
//         Person p = new Person();
//         people.add(p);
//     }
//   }
//   @override
//   Widget build(BuildContext context){
//     return _ChoosePeopleState(context);
//   }
// }

//   @override
//   _ChoosePeopleState createState() => _ChoosePeopleState();

// // class _ChoosePeopleState extends State<ChoosePeople> {
// class _ChoosePeopleState extends State<ChoosePeople> {

//   // List<Person>people = [new Person(),new Person(),new Person(),new Person(),new Person()];
//   // int radiusDistance = 50;

//   // ChoosePeople(){ 
//   //   for (int i = 0; i < radiusDistance; i++) {
//   //       Person p = new Person();
//   //       this.people.add(p);
//   //   }
//   // }

//   @override
//   Widget build(){
//     return Scaffold(
//       backgroundColor: concreteGray,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: Text("Pessoas interessantes nas proximidades."),
//         centerTitle: true,
//         elevation: 0, // 2020-06-16_17-51-36 what is elevation?
//         ),
//         body: ListView.builder(
//           itemCount: people.length,
//           itemBuilder: (context,index){
//             return Padding(
//               // padding: const EdgeInsets.all(8.0),
//               padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
//               child: Card(
//                 child: ListTile(
//                   onTap: (){},
//                   // print("${people[index.getFullName]}"),// console testing
//                   title: Text("\${people[index.getFullName]}"),
//                   leading: CircleAvatar(
//                     // backgroundImage: Icon(Icons.people),
//                     // backgroundImage: AssetImage(),// for the future.
//                   ),
//                 )
//               ),
//             );
//           }
//         )
//     );
//   }

// }
/////////////////////////////////////////////}

//// acquired from tutorials. (studying) ////{
//// FlutterDemoHomePage ////////////////////{

// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class MyAppFutterDemoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
/////////////////////////////////////////////}
/////////////////////////////////////////////}


//// List Attempt 1 //////////////////////////{
class BodyLayout extends StatelessWidget {
  final List<Person>people = [];
  final int radiusDistance = 50;

  BodyLayout(){
    for (int i = 0; i<10;i++){
      this.people.add(Person());        
    }
  }

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
/////////////////////////////////////////////}

// List fuckingFunction(){
//   final l = [];
//   for (int i; i<23;i++){
//     l.add("$i");
//   }
//   return l;
// }

/////////// list example:
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
        body: BodyLayout(),
      ),
    );
  }
}

Widget _myListView(BuildContext context) {

List <Person> people = [];
//      for (int i; i<23;i++){europeanCountries.add("porra");}// why?????
    people.add(Person()); // unbelievable that I had to do this!!!!!!!.
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());
    people.add(Person());

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

//// SearchNearBy////////////////////////////{
class SearchNearBy extends StatefulWidget {
  @override
  _SearchNearByState createState() => _SearchNearByState();
}

class _SearchNearByState extends State<SearchNearBy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
/////////////////////////////////////////////}

//// PersonProfile///////////////////////////{
class PersonProfile extends StatefulWidget {
  @override
  _PersonProfileState createState() => _PersonProfileState();
}

class _PersonProfileState extends State<PersonProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
/////////////////////////////////////////////}

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

//// LoginScreen ////////////////////////////{
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
      @override
      Widget build(BuildContext context) {

        final emailField = TextField(
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "e-mail",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final passwordField = TextField(
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "senha",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListingUsers()));
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
    }
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
          '/pageSearchNearBy': (context) => SearchNearBy(),
          // '/pageChoosePeople': (context) => ChoosePeople(),
          '/pagePersonProfile': (context) => PersonProfile(),
          '/pageListingUsers': (context) => ListingUsers(),
          '/pageFlutterDemo': (context) => MyAppFutterDemoHomePage(),
        }
    ),
  );
}
/////////////////////////////////////////////}

void trashOfSketches(){// this is the place I kept the garbage of sketches I tried thoughtout the process of learning flutter+dart

  // // 2020-06-16_14-57-47: learning how to handle lists in dart. 
  // if (gender)
  // String firstName=namesWomen[random.nextInt(namesWomen.length)];
  // String secondName=firstName;
  // while (firstName == secondName){
  //   secondName = namesWomen[random.nextInt(namesWomen.length)];
  // }
  // String middleName=namesFamily[random.nextInt(namesFamily.length)];
  // String familyName=middleName;
  // while (familyName == middleName){
  //   familyName=namesFamily[random.nextInt(namesFamily.length)];
  // }

// //2020-06-16_23-34-14 how *not* making a class in flutter:
// class Person_Wrong{
//   Random random = new Random();
//   final String firstName;
//   final String secondName;
//   final String middleName;
//   final String familyName;
//   final int uin;
//   final int age;
//   int gender;
//   num height; //cms
//   final num weight; //kg
//   final num ethnicity; //<<classified>>
//   final String occupation;
//   int birthYear;
//   final String color;
  
//     Person({ //constructor
//     // final this.birthYear = (this.random.nextInt(23) + 18),// not working. Why??? DateTime.now().year - (this.random.nextInt(23) + 18), // set to be between from 18 to 40
//     // this.gender = random.nextInt(2),
//     // this.firstName = getNames(this.gender),
//     // int hasTwoNames = random.nextInt(2),

//     if (hasTwoNames != 0){
//       this.secondName = this.firstName,
//       while (this.firstName == this.secondName){
//         this.secondName = getNames(this.gender),
//       }
//     }
//     this.middleName = getNames(2), // 2 for family names 
//     this.familyName = this.middleName,
//     while (this.familyName == this.middleName){
//       this.familyName = getNames(2), // 2 for family names 
//     }
//     this.ht,
//     this.height = random.nextInt(51) + 140, // set to be between from 140 to 190
//     this.weight = random.nextInt(71) + 50, // set to be between from 50 to 120
//     this.occupation = getOccupations(gender),
//   });

//   int get getAge {// no setter, just the getter
//    return DateTime.now().year - birthYear;
//   }

  // int get getRandom (int from,int to) {
  //   return this.random.nextInt(to+1) + from;
  // }
  // void set bYear(int x) {
  //   this.birthYear =  DateTime.now().year - (this.random.nextInt(23) + 18); // set to be between from 18 to 40
  // }

  // void set ht(int x) {
  //   this.height =  DateTime.now().year - (this.random.nextInt(23) + 18); // set to be between from 18 to 40
  // }

//   int get getCurrentYear{
//     return DateTime.now().year;
//   }

//   // void set age(int currentYear) { // in case of "timeline", but I can't study it right now.
//   //   age = currentYear - birthYear;
//   // }
//   String get getFullName {// no setter, just the getter
//     if (this.secondName != null){return this.firstName + " " + this.secondName + " " + this.middleName + " " + this.familyName;}
//     else {return this.firstName + " " + this.middleName + " " + this.familyName;}
//     //print("$fullName");
//   }
// }


/// more studies:
/// 
///       // backing data
//       List <String> europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
//         'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
//         'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
//         'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
//         'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
//         'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
//         'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
//         'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
//         'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
    
  // List <Person> europeanCountries = [];
  // //      for (int i; i<23;i++){europeanCountries.add("porra");} // why????????
  //      europeanCountries.add("porra");


//// 2020y06m17d 08:53:32 ///////////////////{
//// list view studies///////////////////////{
    //   return ListView.separated(
    //     itemCount: 1000,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Text("[foto] ${people[index].getFullName}, ${people[index].getAge} anos"),
    //       );
    //     },

    //     separatorBuilder: (context, index) {
    //       return Divider(
    //         height: 4.0,
    //       );
    //     },
    //   );
    // }

    //   return ListView.builder(
    //     itemCount: people.length,
    //     itemBuilder: (context, "[foto] ${people[index].getFullName}, ${people[index].getAge} anos") {
    //       return ListTile(
    //         title: Text(label),
    //       );
    //     },
    //   );
    // }
   
// Widget _myListView(BuildContext context) {
//       return ListView(
//         children: ListTile.divideTiles(
//           context: context,
//           tiles: [
//             ListTile(
//               title: Text('Sun'),
//             ),
//             ListTile(
//               title: Text('Moon'),
//             ),
//             ListTile(
//               title: Text('Star'),
//             ),
//           ],
//         ).toList(),
//       );
//     }

//     // replace this function with the code in the examples
//      Widget _myListView(BuildContext context) {
//       return ListView(
//         children: <Widget>[
//           ListTile(
//             title: Text("${people[0].name}"),
//           ),
//           ListTile(
//             title: Text('Moon'),
//           ),
//           ListTile(
//             title: Text('Star'),
//           ),
//         ],
//       );
   
//     }

/////////////////////////////////////////////}

}
