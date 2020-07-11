import 'dart:math';

//// classes from parallel scopes ///////////{
import "names_generator.dart";
import "occupation_generator.dart";
/////////////////////////////////////////////}



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
