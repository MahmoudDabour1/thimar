import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:thimar/core/widgets/app_custom_app_bar.dart';
import 'package:thimar/features/address/logic/address_cubit.dart';
import 'package:thimar/features/address/presentation/widgets/insert_address_from_widget.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/theming/app_colors.dart';

class InsertAddressScreen extends StatefulWidget {
  final String type;
  final String address;
  final String description;
  final String phoneNumber;
  final String addressId;
  final bool isEdit;

  const InsertAddressScreen({
    super.key,
    required this.type,
    required this.address,
    required this.description,
    required this.phoneNumber,
    required this.addressId,
    required this.isEdit,
  });

  @override
  State<InsertAddressScreen> createState() => _InsertAddressScreenState();
}

class _InsertAddressScreenState extends State<InsertAddressScreen> {
  LocationData? locationData;
  LatLng? currentLatLng;
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
    fetchLocation();
    // if (widget.isEdit == true) {
    //   cubit.phoneController.text = widget.phoneNumber;
    //   cubit.locationController.text = widget.address;
    //   cubit.descriptionController.text = widget.description;
    //   cubit.typeController.text = widget.type;
    // }
  }

  void fetchLocation() async {
    locationData = await getCurrentLocation();
    if (locationData != null) {
      currentLatLng = LatLng(locationData!.latitude!, locationData!.longitude!);
      setState(() {
        myMarkers.add(
          Marker(
            markerId: const MarkerId("currentLocation"),
            position: currentLatLng!,
            infoWindow: const InfoWindow(title: "موقعي الحالي"),
            icon: customMarker,
          ),
        );
      });
    }
  }

  final cubit = sl<AddressCubit>();

  @override
  Widget build(BuildContext context) {
    print(widget.isEdit);
    print(cubit.phoneController.text);
    // if (widget.isEdit == true) {
    //   cubit.phoneController.text = widget.phoneNumber;
    //   cubit.locationController.text = widget.address;
    //   cubit.descriptionController.text = widget.description;
    //   cubit.typeController.text = widget.type;
    // }
    return Scaffold(
      appBar: AppCustomAppBar(appBarTitle: "إضافة عنوان"),
      body: BlocProvider.value(
        value: cubit,
        child: Stack(
          children: [
            currentLatLng == null
                ? const Center(
                    child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ))
                : GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentLatLng!,
                      zoom: 18.4746,
                      bearing: 192.8334901395799,
                      tilt: 59.440717697143555,
                    ),
                    markers: myMarkers,
                    onMapCreated: (controller) {
                      mapController = controller;
                    },
                  ),
            InsertAddressFromWidget(
              currentLatLng: currentLatLng,
              isEdit: widget.isEdit,
              userSelectedType: widget.type,
              userSelectedDescription: widget.description,
              userSelectedPhone: widget.phoneNumber,
              addressId: int.tryParse(widget.addressId),
            ),
          ],
        ),
      ),
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
