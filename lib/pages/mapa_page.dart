import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWithMarker extends StatefulWidget {
  const MapWithMarker({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapWithMarkerState createState() => _MapWithMarkerState();
}

class _MapWithMarkerState extends State<MapWithMarker> {
  GoogleMapController? mapController;

  final LatLng _markerLocation = const LatLng(19.95047537216425, -96.84390171534145); // Coordenadas del marcador

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final Completer<GoogleMapController> _controller = Completer();
  MapType mapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicación del ITSM'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on_rounded),
            onPressed: () async{
              final GoogleMapController controller = await _controller.future;
              controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: _markerLocation,
                    zoom: 17.5,
                    tilt: 50
                  )
                )
              );
            },
          )
        ],
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        initialCameraPosition: CameraPosition(
          target: _markerLocation,
          zoom: 18.0,
        ),
        mapType: mapType,
        myLocationButtonEnabled: true,
        markers: {
          Marker(
            markerId: const MarkerId('itsm'),
            position: _markerLocation,
            infoWindow: const InfoWindow(
              title: 'Instituto Tecnológico Superior de Misantla',
              snippet: 'Km 1.8 Carretera Lomas del Cojolite, 93821 Misantla, Ver.',
            ),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.layers),
        onPressed: (){
          if(mapType == MapType.normal){
            mapType = MapType.hybrid;
          } else {
            mapType = MapType.normal;
          }

          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }
}