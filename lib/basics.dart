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

  print('---------------------');
  // && || !
  // += -= *= /= %=
  // ? ! ?? ??= ( OOP )
  // ? :
  // is

  int numOne = 16;

  //     true  && true
  print(numOne > 5 && numOne < 15);
  print(numOne > 5 || numOne < 15);

  print('-----------');
  // ! = not
  bool test = false;
  print(!test); // not false

  print(!true);
  print(!false);

  print('-----------');
  // += -= *= /= %=
  double num1 = 10;
  num1 = num1 + 5;
  num1 += 5;
  print(num1);

  // num1 = num1 * 5;
  num1 *= 5;
  print(num1);

  // num1 = num1 / 5;
  num1 /= 4;
  print(num1);

  // num1 = num1 - 5;
  num1 -= 5;
  print(num1);

  // num1 = num1 % 5;
  num1 %= 5;
  print(num1);

  print('---------------');
  // is is!

  print(num1 is! int);
  print(num1 is String);
  print(num1 is double);

  print('---------------');
  // ? :
  //             condition ? resultOne  : resultTwo
  String message = 10 > 50 ? "Yes" : "No";
  print(message);
  int messageI = 10 > 5 ? 1 : 0;
  print(messageI);
  // condition ? Colors.green : Colors.red
  // condition ? Icons.success : Icons.failure

  print('----------------------');
  // if condition , switch case

  // if ( condition ){ body } else { body }

  if (5 > 10) {
    print('5 Big than 10');
  } else {
    print('5 Smaller than 10');
  }

  int a = 11;
  if (a > 1 && a < 10) {
    print('a is a valid number');
  } else {
    print('a is a not valid number');
  }

  print("amir" == "amir");
  print("Amir" == "amir");

  // requested , accepted , cancelled
  String orderStatus = "cancelled";
  if (orderStatus == "requested") {
    print('Order requested!');
  } else if (orderStatus == "accepted") {
    print('Order accepted!');
  } else {
    print('Order status unknown!');
  }

  // switch ( variable ) { case one : { body } break; }
  switch (orderStatus) {
    case "requested":
      {
        print('Order requested!');
      }
      break;
    case "accepted":
      {
        print('Order accepted!');
      }
      break;
    default:
      {
        print('Order status unknown!');
      }
  }

  print('-------------------');
  int dayOfWeek = 3;
  switch (dayOfWeek) {
    case 1:
      print('Saturday');
      break;
    case 2:
      print('Sunday');
      break;
    case 3:
      print('Monday');
      break;
    default:
      print('Not valid number');
  }
}
