import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


void main() => runApp(Wheel());

var _percent = 0.9;
var _percentText = _percent * 100;


class Wheel extends StatefulWidget {
  @override
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {

  @override
  Widget build(BuildContext context) {

    return Positioned(
        bottom: 120.0,
        left: 20.0,
        child: CircularPercentIndicator(
          lineWidth: 14.0,
          radius: 120.0,
          startAngle: 80,
          percent: _percent,
          animation: true,
          animationDuration: 1600,
          backgroundColor: Colors.white,
          progressColor: Colors.indigo,
          center: Text('$_percentText %', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
        ),
    );
  }
}

