import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instant1/shared.dart';
import 'package:instant1/ui/note/home_screen.dart';
import 'package:instant1/ui/note/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Layouts => Column, Row, Stack
  bool obscureText = true;

  final emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  // => Form Validation
  // Define form key
  // Wrap Column with Form
  // Bind form key with Form
  // Write your validators in TextFormField
  // call form key for validate

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50),
              child: Icon(
                Icons.ac_unit_rounded,
                size: 55,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Form(
                  key: formKey,
                  child: Column(
                    // Vertical   => Main
                    // Horizontal => Cross
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email required";
                          }
                          // Not contain @ OR Not contain .
                          if (!value.contains("@") || !value.contains(".")) {
                            return "Invalid email!";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: passwordController,
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              obscureText = !obscureText;
                              setState(() {});
                            },
                            icon: Icon(
                              obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password required";
                          }
                          if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: AlignmentDirectional.centerEnd,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "Forget password ?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        // Main  => Horizontal
                        // Cross => Vertical
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => login(),
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder()),
                              child: const Text("Login"),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () => navToRegisterScreen(context),
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder()),
                              child: const Text("Register"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  navToRegisterScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterScreen()),
    );
  }

  // Define a controller
  // Bind a controller with TextFormFiled
  // Get data from the controller
  void login() {
    // Not validate
    if (!formKey.currentState!.validate()) {
      return;
    }

    String email = emailController.text;
    String password = passwordController.text;

    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      saveLoggedIn();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }).catchError((error) {
      print("Error => ${error}");

      if (error is FirebaseAuthException) {
        print("Error => ${error.code}");
        if (error.code == 'user-not-found') {
          displayToast('No user found for that email.');
        } else if (error.code == 'wrong-password') {
          displayToast('Wrong password provided for that user.');
        } else if (error.code == 'too-many-requests') {
          displayToast(
              'We have blocked all requests from this device due to unusual activity. Try again later.');
        }
      } else {
        displayToast(error.toString());
      }
    });

    // if (email == "amir@gmail.com" && password == "123123") {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => HomeScreen(),
    //     ),
    //   );
    // } else {
    //   print('Email or password wrong!');
    //   displayToast('Email or password wrong!');
    //   // displaySnackBar("Email or password wrong!");
    // }
  }

  void displayToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void displaySnackBar(String message) {
    var snackBar = SnackBar(
      content: Text(message),
    );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void saveLoggedIn() async {
    PreferenceUtils.setBool('loggedIn', true);
  }
}
