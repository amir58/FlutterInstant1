import 'package:flutter/material.dart';
import 'package:instant1/main.dart';
import 'package:instant1/ui/home_screen.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
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
                    obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
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
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => navToRegisterScreen(context),
                    style:
                        ElevatedButton.styleFrom(shape: const StadiumBorder()),
                    child: const Text("Register"),
                  ),
                ),
              ],
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
    String email = emailController.text;
    String password = passwordController.text;

    if (email == "amir@gmail.com" && password == "123123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
    else{
      print('Email or password wrong!');
    }
  }
}
