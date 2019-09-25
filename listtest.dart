




import 'package:flutter/material.dart';
import 'map.dart';
import 'appbar.dart';
import 'listtest.dart';

void main() => runApp(SecondPage());

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * 0.9;
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
            Container(
              //padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              color: Colors.white,
              child: ExpansionTile(
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("SPRYTE LIGHT",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0)),
                      Text('Enough resources to get a project going',
                          style:
                          TextStyle(color: Colors.black, fontSize: 12.0)),
                    ]),
                leading: Icon(Icons.accessibility_new),
                trailing: Text('\$6,500', style: TextStyle(fontSize: 24.0)),
                children: <Widget>[
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.lightbulb_outline),
                              Text('Product Manager',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                  color: Colors.indigo,
                                  width: _width,
                                  height: 10.0),
                              Text(
                                  'An experimented PM will lower your total costs by prioritizing key features',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  )),
                              Text('\$150/h',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.lightbulb_outline),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text('Product Manager',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  color: Colors.indigo,
                                  width: _width,
                                  height: 10.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'An experimented PM will lower your total costs by prioritizing key features',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text('\$150/h',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.lightbulb_outline),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text('Product Manager',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  color: Colors.indigo,
                                  width: _width,
                                  height: 10.0),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    'An experimented PM will lower your total costs by prioritizing key features',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Text('\$150/h',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: ExpansionTile(
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("SPRYTE LIGHT",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0)),
                        Text('Enough resources to get a project going',
                            style:
                            TextStyle(color: Colors.black, fontSize: 12.0)),
                      ]),
                  leading: Icon(Icons.accessibility_new),
                  trailing: Text('\$6,500', style: TextStyle(fontSize: 24.0)),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,10.0),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: ExpansionTile(
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("SPRYTE LIGHT",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0)),
                        Text('Enough resources to get a project going',
                            style:
                            TextStyle(color: Colors.black, fontSize: 12.0)),
                      ]),
                  leading: Icon(Icons.accessibility_new),
                  trailing: Text('\$6,500', style: TextStyle(fontSize: 24.0)),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,10.0),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.lightbulb_outline),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('Product Manager',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                      color: Colors.indigo,
                                      width: _width,
                                      height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'An experimented PM will lower your total costs by prioritizing key features',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Text('\$150/h',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
