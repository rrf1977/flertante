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




/* //from listing_users.dart
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
*/


}
