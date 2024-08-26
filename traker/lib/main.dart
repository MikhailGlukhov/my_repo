

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';


//import 'package:latlong2/latlong.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LocationWidget(),
    );
  }
}

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  double currentZoom = 13;
  MapController mapController = MapController();
  //LatLng currentCenter = LatLng(51.52, 81.21);// instal geoloction in dependence. Now I nead to make current location of device. And use it in Flutter Map


  void _zoomMin(){
  currentZoom = currentZoom - 1;
 // mapController.move(currentCenter, currentZoom);
}
void _zoomMax(){
  currentZoom = currentZoom + 1;
  // mapController.move(currentCenter, currentZoom);
   
}
 

  
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 102, 113, 122),
        title: const Text('location'),
        actions: <Widget>[( IconButton(onPressed: _zoomMin, icon: Icon(Icons.remove))),
        ( IconButton(onPressed: _zoomMax, icon: Icon(Icons.add)))],
      ),
      body: Stack(children: [
        FlutterMap(
          mapController: mapController,
          options:   MapOptions(
           
            initialZoom: currentZoom,
            onMapReady: (){
              mapController.mapEventStream.listen((event) { });
              
            }
                             
                   
          ),
           children: [TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',

                  ),
            
                  ]
                  )
      ],),
    );
  }
}
 

