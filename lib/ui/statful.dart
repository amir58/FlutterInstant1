import 'package:flutter/material.dart';

class IncrementDecrementScreen extends StatefulWidget {
  const IncrementDecrementScreen({super.key});

  @override
  State<IncrementDecrementScreen> createState() =>
      _IncrementDecrementScreenState();
}

class _IncrementDecrementScreenState extends State<IncrementDecrementScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Refresh UI"),
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 66,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              number++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
