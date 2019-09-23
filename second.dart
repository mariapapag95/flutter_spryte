import 'package:flutter/material.dart';
import 'map.dart';
import 'appbar.dart';

void main() => runApp(SecondPage());

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: true,
                backgroundColor: Colors.black,
                title: Text(
                  'SPRYTE',
                ),
                expandedHeight: 400.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: MyMap(),
                ),
              ),
            ];
          },
          body: ListView(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return MenuDetails();
                    }));
                  },
                  child: Hero(
                    tag: 'menuHero',
                    child: ListTile(
                      // ** SHOULD BE RENDERED DYNAMICALLY WITH BUILDER **
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('SPRYTE LYTE', style: TextStyle(fontSize: 20.0)),
                          Text('Get something going',
                              style: TextStyle(fontSize: 14.0)),
                        ],
                      ),
                      leading: Icon(Icons.accessibility_new),
                      trailing:
                          Text('\$6,500', style: TextStyle(fontSize: 24.0)),
                      //onExpansionChanged: ,
                    ),
                  )),
            ],
          )),
    );
  }
}

class MenuDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Hero(
              tag: 'menuHero',
              child: Column(
                // ** SHOULD BE RENDERED DYNAMICALLY WITH BUILDER **
                children: <Widget>[
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('SPRYTE LYTE', style: TextStyle(fontSize: 20.0)),
                        Text('Get something going',
                            style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    leading: Icon(Icons.accessibility_new),
                    trailing: Text('\$6,500', style: TextStyle(fontSize: 24.0)),
                    //onExpansionChanged: ,
                  ),
                  Container(
                    width: _width,
                    // height: _height
                    child: Text(
                      'details of SPRYTE Lyte',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: true, items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: new Icon(Icons.arrow_back_ios),
          title: Text('BACK'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.arrow_forward_ios),
          title: Text('CONTINUE'),
        ),
      ]),
    );
  }
}
