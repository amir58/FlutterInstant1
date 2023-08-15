// OOP => Encapsulation, Inheritance, Abstraction, Polymorphism
// OOP => class, object, enum, mixin

// Class, Object, Encapsulation
// define a class
// class ClassName { class body ( function, variables ) }
// define an object
// ClassName objectName = ClassName();

import 'package:instant1/person.dart';
import 'package:instant1/phone.dart';

main() {
  Phone phone1 = Phone.iOS(
    name: "S20",
    price: 15000,
  );
  // phone1.os = "iOS"; // WRONG

  print(phone1.getOperatingSystem());
  print(phone1.getPrice());

  phone1.setPrice(-10000);

  print(phone1.getPrice());






  Person person1 = Person.male(
    name: "Ahmed",
    age: "18",
    city: "Cairo",
    streetName: 'Tahrir',
  );

  Person person2 = Person.female(
    name: "Nora",
    age: "10",
    city: "Giza",
    streetName: "Haram",
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
