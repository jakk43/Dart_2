// AIzaSyC1p8pqMC6cdgz845HJkZy-e_8Yc9oY3LA
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
// ignore: unused_import
import 'package:geolocator/geolocator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  // ignore: unused_field

  LatLng currentLacation = LatLng(13.7607218, 100.4501805);
  // ignore: unused_field
  GoogleMapController _mapController;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: currentLacation, zoom: 14.8),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  zoomControlsEnabled: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
