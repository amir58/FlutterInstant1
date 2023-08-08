main() {
  printMyName();
  print(getMyName());
  welcomeVisitor("Ali");
  welcomeVisitor("Ahmed");

  print(sum(10, 5));
  print(sum(10, 50));
  print(sum2(10, 5));
  print(sum2(10, 50));

  // ctrl + p
  dpr("Ali");
  dpo();
  enterYourName("Amir","Mohammed");

  npr(name: "Mohammed");
  nprSum(numberOne: 20, numberTwo: 30);
  npo();
  npo(name: "Zaki");

  enterYourName2(firstName: "Amir");
  enterYourName2(firstName: "Amir", lastName: "Mohammed");

  enterYourName3("Amir");
  enterYourName3("Amir", lastName: "Mohammed");

}
// DataType functionName( parameters ) { functionBody }
// DataTypes => void OR String, int, double, bool, List, Map, etc..
// functionName => camelCase
// functionName => start with verb => get, save, add, is, print
// parameters => variables
// functionBody => write your function code

void printMyName() {
  print('Hello Amir!');
}

void printMyName2() => print('Hello Amir!');

String getMyName() {
  String myName = "Amir";
  return myName;
}

String getMyName2() => "Amir";

void welcomeVisitor(String name) {
  print('Welcome Mr. $name');
}

double sum(double numberOne, double numberTwo) {
  return numberOne + numberTwo;
}

double sum2(double numberOne, double numberTwo) => numberOne + numberTwo;

// parameters
// Default parameter => required, optional
// Named   parameter => required, optional

// Default parameter required
void dpr(String name) {
  print(name);
}

// Default parameter optional
void dpo([String name = "No Name"]) {
  print(name);
}

// Default parameter required + Default parameter optional
void enterYourName(String firstName, [String lastName = ""]) {
  print("Welcome $firstName $lastName");
}

// Named parameter required
void npr({required String name}){
  print(name);
}
void nprSum({required double numberOne, required double numberTwo}){
  print(numberOne + numberTwo);
}

// Named parameter optional
void npo({String name = "No Name"}){
  print(name);
}

// // Named parameter required + Named parameter optional
void enterYourName2({required String firstName, String lastName = ""}) {
  print("Welcome $firstName $lastName");
}

// // Default parameter required + Named parameter optional
void enterYourName3(String firstName, {String lastName = ""}) {
  print("Welcome $firstName $lastName");
}




