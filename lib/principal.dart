import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLUTTER MAPS NOVO'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(41.8905, 12.4942), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(48.8032, 2.3511), //Paris
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.red),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.8905, 12.4942), //Roma
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.orange),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(38.7071, -9.13549), //Lisboa
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.teal),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.3879, 2.16992), //Barcelona
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.purple),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(45.4637, 9.18817), //Milao
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_history, color: Colors.lightBlueAccent),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(52.5186, 13.4081), //Berlim
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.black87),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(48.3061, 14.2863), //Linz
                    builder: (ctx) => Container(
                      child: Icon(Icons.add_location_alt, color: Colors.pink),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
