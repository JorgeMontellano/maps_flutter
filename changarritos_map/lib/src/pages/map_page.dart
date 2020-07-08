import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  // final CameraPosition _kGooglePlex =
  // CameraPosition(target: LatLng(22.575645, -102.248015), zoom: 20.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('eTuux Changarritos'),
          backgroundColor: Colors.blue,
        ),
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
              target: LatLng(22.575645, -102.248015), zoom: 17.0),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: {homeMarker},
        ),
      ),
    );
  }

  Marker homeMarker = Marker(
      markerId: MarkerId('home'),
      position: LatLng(22.575994, -102.247360),
      infoWindow: InfoWindow(
          title: 'Mi casa', snippet: 'Aqui se encuentra mi dulce hogar'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));
}
