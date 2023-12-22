

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          zoom: 17,
            target: LatLng(22.362202704107073, 91.82226580438147),
          bearing: 0,
          tilt: 5,
        ),
        markers: {
          Marker(
            markerId: MarkerId("Initial position"),
            position: LatLng(22.362202704107073, 91.82226580438147),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
              title: "point",
              snippet: "Your point",
            ),
            draggable: true,
          ),
        },
        polylines: {
          Polyline(
            polylineId: PolylineId(""),
            width: 5,
            color: Colors.red,
            patterns: [
              //PatternItem.dash(10),
              PatternItem.gap(2),
              PatternItem.dot,
            ],
            points: [
              LatLng(22.362202704107073, 91.82226580438147),
              LatLng(22.35996947247785, 91.82308999131493),
              LatLng(22.36212812956594, 91.82079985659136),
              LatLng(22.362202704107073, 91.82226580438147),
            ]
          )
        },
        polygons: {
          Polygon(
            fillColor: Colors.greenAccent,
            strokeColor: Colors.greenAccent,
            strokeWidth: 5,
            polygonId: PolygonId(""),
            points: [
              LatLng(22.36645834904973, 91.82427510182289),
              LatLng(22.364835045966284, 91.82497975866188),
              LatLng(22.364323428733943, 91.82274271166727),
              LatLng(22.365261807913022, 91.82140655389779),
              LatLng(22.36645834904973, 91.82427510182289),
            ]
          )
        },
        circles: {
          Circle(
            circleId: CircleId(""),
            center: LatLng(22.362202704107073, 91.82226580438147),
            fillColor: Colors.green,
            strokeColor: Colors.white,
            radius: 50
          )
        },
      ),

    );
  }
}
