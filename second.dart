import 'package:flutter/material.dart';
import 'map.dart';

void main() => runApp(MyApp());

List<String> titles = [
  "SPRYTE LIGHT",
  "DISTRIBUTED SPTYTE",
  "CO-LOCATED SPRYTE"
];
List<String> subtitles = [
  "Get something going ",
  "Switch to high gear",
  "Push to a whole new scale"
];
List<String> prices = ["\$6,500", "\$9,900", "\$22,000"];

//SPRYTE LIGHT
List<String> employees = ["Product Manager", "PM + Architech", "PM + Designer"];
List<String> descriptions = [
  "An experimented PM will lower your total costs by prioritizing key features",
  "The idea team if you already know what you want your product to look like",
  "Define app functionality and get beautiful fron-end designs"
];
List<String> wages = ["\$150/h", "\$250/h", "\$250/h"];
List<IconData> icons = [Icons.lightbulb_outline, Icons.settings, Icons.brush];

//DISTRIBUTED SPRYTE
List<String> teams = ["3X", "5X", "8X"];
List<String> teamDescriptions = [
  "Get the smallest agile teacm and get a project started",
  "A mixed team of senior architects and more junior resources",
  "Turn up the power! Get tech built faster with a larger team"
];
List<String> totalWages = ["\$8,500", "\$12,000", "\$36,000"];
List<String> avgWages = ["\$32/h avg", "\$28/h avg", "\$26/h avg"];
List<IconData> disIcons = [
  Icons.account_circle,
  Icons.people_outline,
  Icons.group_add
];

// CO-LOCATED SPRYTE
List<String> locations = ["US + Offshore", "US + Nearshore", "Full US"];
List<String> locDescriptions = [
  "Get 1 local resource managing a full offshore team",
  "Get 1 local resource managing a nearshore (your timezone +/- 3h) team",
  "Stay local with a fully US based team"
];
List<String> priceOne = ["\$12,000", "\$16,000", "\$36,000"];
List<String> priceTwo = ["\$37/h", "\$42/h", "\$62/h"];
List<IconData> coIcons = [Icons.language, Icons.flag, Icons.flag];

List<Widget> widgetList = [SpryteLight(), Distributed(), Colocated()];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListDisplay(),
    );
  }
}

class ListDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              //onExpansionChanged: //get rid of trailing,
              title: Container(
                height: 100.0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text((titles[index]),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      Text((subtitles[index]),
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ]),
              ),
              leading: Icon(Icons.accessibility_new),
              trailing: Text((prices[index]), style: TextStyle(fontSize: 24.0)),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                              height: 300.0, child: (widgetList[index])),
                        ),
                      ],
                    ),
                    DropDown(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,0.0,8.0,8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(right:9.0),
                            width: 210.0,
                            child: RaisedButton(
                              padding: EdgeInsets.all(1.0),
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(new Radius.circular(3.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListDisplay()),
                                );
                              },
                              child: ListTile(
                                dense: true,
                                leading:
                                    Icon(Icons.check_circle, color: Colors.white, size: 25.0),
                                title: Align(
                                  alignment: Alignment(-5.75, 0),
                                  child: Text(
                                    'CONFIRM SPRYTE',
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 60.0,
                            child: RaisedButton(
                              padding: EdgeInsets.all(1.0),
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(new Radius.circular(3.0))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListDisplay()),
                                );
                              },
                              child: ListTile(
                                dense: true,
                                leading:
                                Icon(Icons.alarm, color: Colors.white, size: 25.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class SpryteLight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: MediaQuery.of(context).size.width / employees.length,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  icons[index],
                  size: 50.0,
                ),
                SizedBox(
                  height: 50.0,
                  child: Text((employees[index]),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                    color: Colors.indigo,
                    // width: _width,
                    height: 10.0),
                SizedBox(
                  height: 75.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((descriptions[index]),
                        style: TextStyle(
                          fontSize: 12.0,
                        )),
                  ),
                ),
                Text((wages[index]),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Distributed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: MediaQuery.of(context).size.width / employees.length,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  disIcons[index],
                  size: 50.0,
                ),
                SizedBox(
                  height: 30.0,
                  child: Text((teams[index]),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                    color: Colors.indigo,
                    // width: _width,
                    height: 10.0),
                SizedBox(
                  height: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((teamDescriptions[index]),
                        style: TextStyle(
                          fontSize: 12.0,
                        )),
                  ),
                ),
                Text((totalWages[index]),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19.0, color: Colors.grey)),
                Text((avgWages[index]),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Colocated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: employees.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: MediaQuery.of(context).size.width / employees.length,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  coIcons[index],
                  size: 50.0,
                ),
                SizedBox(
                  height: 50.0,
                  child: Text((locations[index]),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold)),
                ),
                Container(
                    color: Colors.indigo,
                    // width: _width,
                    height: 10.0),
                SizedBox(
                  height: 70.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text((locDescriptions[index]),
                        style: TextStyle(
                          fontSize: 12.0,
                        )),
                  ),
                ),
                Text((priceOne[index]),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19.0, color: Colors.grey)),
                Text((priceTwo[index]),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() {
    return _DropDownState();
  }
}

class _DropDownState extends State<DropDown> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width * 0.52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(new Radius.circular(10.0))),
            child: DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 25.0)),
                );
              }).toList(),
              onChanged: (String value) {
                setState(() {
                  _value = value;
                });
              },
              hint: Text('Select account'),
              value: _value,
              isExpanded: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(new Radius.circular(10.0))),
            child: DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 25.0)),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  _value = newValue;
                });
              },
              hint: Text('Select Resources'),
              value: _value,
              isExpanded: true,
            ),
          )
        ],
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Row(
      children: <Widget>[
        Container(
          width: 80.0,
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
        Container(
          width: 120.0,
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
      ],
    ));
  }
}
