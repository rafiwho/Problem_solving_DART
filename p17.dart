import 'package:flutter/material.dart';

void main() => runApp(SettingsApp());

class SettingsApp extends StatefulWidget {
  @override
  _SettingsAppState createState() => _SettingsAppState();
}

class _SettingsAppState extends State<SettingsApp> {
  bool _darkMode = false;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _darkMode 
          ? ThemeData.dark() 
          : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SwitchListTile(
                title: Text('Dark Mode'),
                value: _darkMode,
                onChanged: (value) => setState(() => _darkMode = value),
              ),
              SwitchListTile(
                title: Text('Notifications'),
                value: _notifications,
                onChanged: (value) => setState(() => _notifications = value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
