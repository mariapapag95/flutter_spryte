import 'package:flutter/material.dart';

void main() => runApp(MyAppBar());

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.red,
      title: Text(
        'SPRYTE',
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        Container(
          height: 110.0,
          child: DrawerHeader(
            child: Text('Drawer Header',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white)),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {},
        ),
      ]),
    );
  }
}
