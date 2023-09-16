import 'package:flutter/material.dart';
import 'package:instant1/ui/bmi/bmi_screen.dart';
import 'package:instant1/ui/home_screen.dart';
import 'package:instant1/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class ExpandScreen extends StatelessWidget {
  const ExpandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 3 / 6
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              height: 100,
            ),
          ),
          // 1  / 6
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Total = 4
                Expanded(
                  // 1 /4
                  child: Container(
                    color: Colors.red,
                    width: 100,
                  ),
                ),
                Expanded(
                  // 2 /4
                  flex: 2,
                  child: Container(
                    color: Colors.blueGrey,
                    width: 100,
                  ),
                ),
                Expanded(
                  // 1/4
                  child: Container(
                    color: Colors.pink,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print('Register pressed');
                },
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
