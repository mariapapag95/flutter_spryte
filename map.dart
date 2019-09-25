import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spryte_app_maria/second.dart';
import 'percentwheel.dart';

void main() => runApp(MyMap());

var _percent = '0.6%';

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  List<Marker> allMarkers = [];

  GoogleMapController mapController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable: true,
        onTap: () {
          print('Marker Tapped');
        },
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        // ** YOU CAN ALSO ADD AN ICON FROM ASSET FOLDER
        // WITH 'fromAsset('file_name.png')
        position: LatLng(40.7128, -74.0060)));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: (GoogleMapController controller) {},
          mapType: MapType.satellite,
          markers: Set.from(allMarkers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 1.4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Text('Only $_percent of teams match your requirements',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Text('Choose a team or swipe up for more',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(child: Wheel())
      ],
    );
  }
}
