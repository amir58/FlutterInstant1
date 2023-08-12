import 'package:flutter/material.dart';

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
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('Search');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => print('Notifications'),
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
