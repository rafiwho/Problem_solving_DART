import 'package:flutter/material.dart';

void main() => runApp(DrawerAnimationApp());

class DrawerAnimationApp extends StatefulWidget {
  @override
  _DrawerAnimationAppState createState() => _DrawerAnimationAppState();
}

class _DrawerAnimationAppState extends State<DrawerAnimationApp> {
  bool _drawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Drawer'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => setState(() => _drawerOpen = true),
          ),
        ),
        body: Stack(
          children: [
            Center(child: Text('Main Content')),
            if (_drawerOpen) ...[
              GestureDetector(
                onTap: () => setState(() => _drawerOpen = false),
                child: Container(color: Colors.black54),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: _drawerOpen ? 0 : -300,
                top: 0,
                bottom: 0,
                width: 300,
                child: Material(
                  child: ListView(
                    children: [
                      DrawerHeader(child: Text('Menu')),
                      ListTile(title: Text('Home'), onTap: () {}),
                      ListTile(title: Text('Settings'), onTap: () {}),
                      ListTile(title: Text('Profile'), onTap: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
