import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Image.network(
            "https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png",
            height: 150,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/instagram.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 10),
              Image.asset(
                "assets/images/snapchat.png",
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
