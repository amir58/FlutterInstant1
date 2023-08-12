class Person {
  String name = "";
  String age = "";
  String city = "";
  String streetName = "";

  // Constructor
  // 1 : function
  // 2 : no return type
  // 3 : ClassName
  // 4 : called when take an object
  // 5 : body is optional

  // ClassName(){}
  Person({
    required this.name,
    required this.age,
    required this.city,
    required this.streetName,
  }) {
    print('New object from Person class');
    printData();
  }

  void printData() {
    print('-----------------');
    print('Name : $name');
    print('Age : $age');
    print('City : $city');
    print('Street Name : $streetName');
  }
}
