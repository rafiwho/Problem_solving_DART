import 'package:flutter/material.dart';

void main() => runApp(TextStylesApp());

class TextStylesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Styles')),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Large Title', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              Text('Medium Text', style: TextStyle(fontSize: 24, color: Colors.blue)),
              Text('Small Text', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
              Row(
                children: [
                  Text('Red ', style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text('Green ', style: TextStyle(color: Colors.green, fontSize: 20)),
                  Text('Blue', style: TextStyle(color: Colors.blue, fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
