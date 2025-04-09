import 'package:flutter/material.dart';

void main() => runApp(SwipeToDismissApp());

class SwipeToDismissApp extends StatefulWidget {
  @override
  _SwipeToDismissAppState createState() => _SwipeToDismissAppState();
}

class _SwipeToDismissAppState extends State<SwipeToDismissApp> {
  final List<String> _items = List.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Swipe to Dismiss')),
        body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(_items[index]),
              background: Container(color: Colors.red),
              secondaryBackground: Container(color: Colors.blue),
              onDismissed: (direction) {
                setState(() {
                  _items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${_items[index]} dismissed')),
                );
              },
              child: ListTile(
                title: Text(_items[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
