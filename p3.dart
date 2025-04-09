import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numbered List',
      home: NumberListScreen(),
    );
  }
}

class NumberListScreen extends StatelessWidget {
  final List<int> numbers = List.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbered List'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Item ${numbers[index]}',
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
