import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:thimar/core/theming/app_colors.dart';

class InsertAddressMap extends StatefulWidget {
  final LatLng? currentLatLng;

  const InsertAddressMap({super.key, required this.currentLatLng});

  @override
  State<InsertAddressMap> createState() => _InsertAddressMapState();
}

class _InsertAddressMapState extends State<InsertAddressMap> {
  LocationData? locationData;
  GoogleMapController? mapController;

  var myMarkers = HashSet<Marker>();
  late BitmapDescriptor customMarker;

  getCustomMarker() async {
    customMarker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/images/location_mark.png',
      mipmaps: true,
      bundle: rootBundle,
    );
  }

  @override
  void initState() {
    super.initState();
    getCustomMarker();
  }

  @override
  Widget build(BuildContext context) {
    return widget.currentLatLng == null
        ? const Center(
            child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ))
        : GoogleMap(
            initialCameraPosition: CameraPosition(
              target: widget.currentLatLng!,
              zoom: 18.4746,
              bearing: 192.8334901395799,
              tilt: 59.440717697143555,
            ),
            markers: myMarkers,
            onMapCreated: (controller) {
              mapController = controller;
            },
          );
  }

  Future<LocationData?> getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return null;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return null;
    }

    return await location.getLocation();
  }
}
