import 'package:flutter/material.dart';
import 'second.dart';
import 'appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPRYTE App',
      home: MyHomePage(title: 'SPRYTE App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ** keep this to have an example of a function
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.indigo,
      drawer: MyDrawer(),
      //appBar: MyAppBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'SPRYTE',
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          height: 400.0,
          width: 390.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(new Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                child: ListTile(
                  trailing: Icon(Icons.search),
                  title: TextField(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  padding: EdgeInsets.only(right: 30.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListDisplay()));


                    // *** REROUTE THIS BUTTON TO TECH STACK PAGE ***




                  },
                  child: Text(
                    'or specify your tech stack',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12.0,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60.0, 25.0, 60.0, 45.0),
                child: RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(new Radius.circular(8.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListDisplay()),
                    );
                  },
                  child: ListTile(
                    trailing: Icon(Icons.arrow_forward, color: Colors.white),
                    title: Text(
                      'GET SPRYTE',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'SPRYTE is an on-demand technology plateform. \n Stop wasting time hiring, get a building technology today',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
