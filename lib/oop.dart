// OOP => Encapsulation, Inheritance, Abstraction, Polymorphism
// OOP => class, object, enum, mixin

// Class, Object, Encapsulation
// define a class
// class ClassName { class body ( function, variables ) }
// define an object
// ClassName objectName = ClassName();

import 'package:instant1/inheritance/home_screen.dart';
import 'package:instant1/person.dart';
import 'package:instant1/phone.dart';

main() {
  // Inheritance

  // HomeScreen homeScreen = HomeScreen();
  // homeScreen.execute();

  Phone phone1 = Phone.android(name: "S20", price: 15000);
  Phone phone2 = Phone.iOS(name: "iPhone 13", price: 25000);

  List<Phone> phones = [];
  phones.add(phone1);
  phones.add(phone2);

  phones.forEach((element) {
    print(element);
  });

  for (var phone in phones) {
    phone.printData();
  }





  // Final vs Constant

  final numberOne = 1; // Runtime
  const numberTwo = 1; // Compile time

  // numberOne = 5; // WRONG
  // numberTwo = 5; // WRONG



}
