import 'package:flutter/material.dart';

void main() => runApp(CustomAppBarApp());

class CustomAppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              FlutterLogo(),
              SizedBox(width: 10),
              Text('My App'),
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: Center(child: Text('Content')),
      ),
    );
  }
}
