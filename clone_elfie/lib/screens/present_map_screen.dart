import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class PresentMapScreen extends StatefulWidget {
  const PresentMapScreen({super.key});

  @override
  State<PresentMapScreen> createState() => _PresentMapScreenState();
}

class _PresentMapScreenState extends State<PresentMapScreen> {
  late GoogleMapController _mapController;

  // Initial camera position (latitude and longitude)
  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(37.7749, -122.4194), // San Francisco coordinates
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        mapType: MapType.normal,
        myLocationEnabled: false,
        myLocationButtonEnabled: false,
        compassEnabled: false,
        trafficEnabled: false,
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }
}
