main() {
  print('HelloWorld!');

  print('Hi');

  // sout
  print('SOUT');
  print('');
  // Comments
  // This is a comment

  // Data Types => String , int , double , bool ( boolean ) , List , Map
  // String => 'text' , "text"
  // int => 1 , 40, 55, 36
  // double => 1.6 , 2.8 , 30.5 , 99.2 , 99.9
  // bool => true , false
  // List of String => [ 'nameOne', 'two', 'three' ]

  // Define a variable
  // DataType variableName = value ;

  String name = 'Amir Mohammed';
  int age = 20;
  double c = 2.6;
  bool isWorking = true;
  List<String> languages = ["Arabic", "English", "Deutsch"];

  print('Name : $name');
  print('Age : $age');
  print('C : $c');
  print('Is Working : $isWorking');
  print('Languages : $languages');

  // Naming
  // اسم معبر
  // int x,y,z,p1,p2,p3 => WRONG
  // int age , numberOne, numberTwo, pensCount

  // variables , functions => camelCase
  // isworking , numberone , getuserdatafromserver => WRONG
  // isWorking , numberOne , getUserDataFromServer
  String zoomMeetingRoomUrl = "";

  // acceptedNaming => letter ( a:z ) , _ , $
  int numberOne = 5;
  int _numberOne = 5;
  int $numberOne = 5;

  // int 1numberOne = 5;
  // int number One = 5;
  // int #numberOne = 5;
  // int @numberOne = 5;
  // int !numberOne = 5;

  // files => small_letters_with_under_scores
  // main , basics , login_screen , admin_home_screen

  // classes => PascalCase
  // LoginScreen , AdminHomeScreen

  // variable => _counter
  // function => _counter()

  int numberTwo = 10;
  int numberThree = 5;

  int result = numberTwo + numberThree;

  print('Result : $result');

  print('Result : $numberTwo + numberThree');

  print('Result : ${numberTwo + numberThree}');

  print('Result : $numberTwo + $numberThree');

  print('Result : ${numberTwo - numberThree}');

  print('Result : ${numberTwo * numberThree}');

  print('Result : ${numberTwo / numberThree}');

  print('Result : ${numberTwo % numberThree}');

  int number = 5;
  print('Number : $number');
  number + 1; // WRONG
  // 5 + 1 = 6
  // 6
  number = number + 1;
  print('Number : $number');
  number++; // Increment
  print('Number : $number');
  number--; // Decrement
  print('Number : $number');

  //      10            5
  print(numberTwo > numberThree);
  print(numberTwo >= numberThree);
  print(numberTwo < numberThree);
  print(numberTwo <= numberThree);
  print(numberTwo == numberThree); // Equal To
  print(numberTwo != numberThree); // Not Equal To

}
