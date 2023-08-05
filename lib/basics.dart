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

  // Loops ( for , while , do while )
  // Lists ( Arrays )
  // Strings
  print('-----------------');

  print('Start while');

  // Loops ( for , while , do while )
  // variable + condition + (increment/decrement) = loop
  int x = 0; // 5

  while (x < 5) {
    print(x);
    x++;
  }

  print('End while');

  print('Start for');
  for (int y = 0; y < 5; y++) {
    print(y);
  }
  print('End for');

  print('---------');
  for (int y = 5; y <= 50; y += 5) {
    print(y);
  }

  print('---------'); // continue , break
  for (int y = 0; y <= 10; y++) {
    print(y);
    if (y == 5) {
      continue;
    }
    print(y);
  }

  print('---------'); // continue , break
  for (int y = 0; y <= 10; y++) {
    print(y);
    if (y == 5) {
      break;
    }
    print(y);
  }

  print('-----------');
  // variable + condition + (increment/decrement) = loop
  int y = 0;

  do {
    print(y);
    y++;
  } while (y < 5);

  print('-----------');
  // variable + condition + (increment/decrement) = loop
  int z = 0; // 1

  do {
    print(z);
    z++;
  } while (z > 5); // false

  print('---------------');
  // Lists
  // List<DataType> listName = [];
  List<String> names = [];

  names.add("Abelrahman");
  names.add("Kerols");

  List<String> girlsNames = [
    "Nada",
    "Norhan",
    "Mahmoud",
    "Mahmoud",
    "Ahmed",
    "Maha",
    "Yassa",
  ];

  names.addAll(girlsNames);

  print(names);
  print(names.length); // 4
  // first index = 0
  // names[0] = "Abelrahman";
  // names[1] = "Kerols";
  // names[2] = "Nada";
  // names[3] = "Norhan";

  // Get value
  print(names[3]);
  print(names.elementAt(0));

  // Test range error
  // print(names[4]);

  // Test range error
  // List<String> testNames = [];
  // print(testNames[0]);

  // Edit ( Update )
  names[0] = "Ali";
  print(names);

  print(names.isEmpty);
  print(names.isNotEmpty);

  print(names.reversed); // to print reversed only
  names = names.reversed.toList(); // to save reversed
  print(names);

  print(names.first);
  print(names.last);

  // names.clear(); // Delete all names
  print(names.contains("Ali"));
  print(names.contains("ali"));

  // CRUD => Create, Read, Update, Delete
  // Delete ( 5 ways )
  print(names.remove("ali"));
  print(names.remove("Ali"));
  print(names.removeLast());
  print(names.removeAt(0));
  print(names);
  names.removeRange(0, 2);
  print(names);
  // names.remove("Mahmoud");
  names.removeWhere((element) => element == "Mahmoud");
  print(names);

  print('--------------------');
  // Strings
  String welcome = " Welcome to flutter course ";
  welcome = welcome.trim();
  print(welcome.length);
  print(welcome.isEmpty);
  print(welcome.isNotEmpty);
  print(welcome.toUpperCase());
  print(welcome.toLowerCase());
  print(welcome.contains("to"));
  print(welcome.contains("flutter"));
  print(welcome.contains("Flutter"));
  print(welcome.substring(8,10));

  String email = " amir@gmail.com ";
  print(email.length);
  print(email.trimRight());
  print(email.trimLeft());
  print(email.trim());

  String dateTime = "2023-08-05 6:56PM";
  List<String> dateTimes = dateTime.split(" ");
  print(dateTimes);
  print(dateTimes[0]);
  print(dateTimes[1]);
  String date = dateTimes[0];
  print(date.split("-"));

  // 01116036522
  // 0111 6036 522
  // 0111-6036-522
  // 00201116036522
  // 002 0111 6036 522
  // 002-0111-6036-522
  // +201116036522
  // +2 0111 6036 522
  // +2-0111-6036-522
  String phoneNumber = "+2 0111 6036-002";
  if (phoneNumber.startsWith("00")) {
    phoneNumber = phoneNumber.replaceFirst("00", "+");
  }
  phoneNumber = phoneNumber.replaceAll(" ", "").replaceAll("-", "");
  print(phoneNumber);
}
