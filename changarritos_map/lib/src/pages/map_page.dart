import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('eTuux Changarritos'),
          backgroundColor: Colors.green[200],
        ),
        body: new FlutterMap(
          options: MapOptions(
            center: LatLng(22.574980, -102.247576),
            zoom: 12.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate: 'https://api.tiles.mapbox.com/v4/'
                    '{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}',
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1Ijoiam1vbnRlbGxhbm8iLCJhIjoiY2tjYXc4am41MXpndTJ4bzZlanRpNzBhciJ9.J44_QjsQboYA8EobUc4sVg',
                  'id': 'mapbox.streets',
                }),
            MarkerLayerOptions(
              markers: [
                Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(22.575683, -102.247447),
                    builder: (ctx) =>
                        Container(child: Icon(Icons.add_location))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
