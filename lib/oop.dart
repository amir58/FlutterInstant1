// OOP => Encapsulation, Inheritance, Abstraction, Polymorphism
// OOP => class, object, enum, mixin

// Class, Object, Encapsulation
// define a class
// class ClassName { class body ( function, variables ) }
// define an object
// ClassName objectName = ClassName();

import 'package:instant1/person.dart';

main() {
  Person person1 = Person(
    name: "Ahmed",
    age: "18",
    city: "Cairo",
    streetName: 'Tahrir',
  );

  String name1 = "One";
  String age1 = "10";
  String city1 = "Cairo";
  String streetName1 = "Tahrir";

  print('------------------');
  print('Name : $name1');
  print('Age : $age1');
  print('Address : $city1');
  print('Address : $streetName1');

  String name2 = "One";
  String age2 = "20";
  String address2 = "Cairo";

  print('------------------');
  print('Name : $name2');
  print('Age : $age2');
  print('Address : $address2');

  String name3 = "One";
  String age3 = "30";
  String address3 = "Cairo";

  print('------------------');
  print('Name : $name3');
  print('Age : $age3');
  print('Address : $address3');
}
