import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:instant1/ui/bmi/bmi_screen.dart';
import 'package:instant1/ui/insta/insta_main_screen.dart';
import 'package:instant1/ui/note/home_screen.dart';
import 'package:instant1/ui/note/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginScreen()
          : const HomeScreen(),
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

