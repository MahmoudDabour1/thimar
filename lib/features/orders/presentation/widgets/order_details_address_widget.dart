import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thimar/features/orders/data/models/order_details_response_model.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class OrderDetailsAddressWidget extends StatefulWidget {
  final OrdersDetailsResponseModel data;

  const OrderDetailsAddressWidget({super.key, required this.data});

  @override
  State<OrderDetailsAddressWidget> createState() =>
      _OrderDetailsAddressWidgetState();
}

class _OrderDetailsAddressWidgetState extends State<OrderDetailsAddressWidget> {
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
    final order = widget.data.data;
    final double lat =
        double.tryParse(order?.address?.lat.toString() ?? "") ?? 0.0;
    final double lng =
        double.tryParse(order?.address?.lng.toString() ?? "") ?? 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(12),
        Text(
          "عنوان التوصيل",
          style: AppStyles.font16GreenBold,
        ),
        verticalSpace(16),
        Row(
          children: [
            Column(
              children: [
                Text(
                  order?.address?.type ?? "",
                  style: AppStyles.font16GreenMedium,
                ),
                verticalSpace(8),
                Text(order?.address?.location ?? "",
                    style: AppStyles.font16DarkerGrayLight),
                verticalSpace(8),
                Text(order?.address?.description ?? "",
                    style: AppStyles.font16DarkerGrayLight),
              ],
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(lat, lng),
                    zoom: 15.0,
                  ),
                  onMapCreated: (controller) {
                    setState(() {
                      myMarkers.add(
                        Marker(
                          markerId: const MarkerId("1"),
                          position: LatLng(lat, lng),
                          infoWindow: InfoWindow(
                            title: order?.address?.location,
                          ),
                          icon: customMarker,
                        ),
                      );
                    });
                  },
                  markers: myMarkers,
                  zoomGesturesEnabled: false,
                  scrollGesturesEnabled: false,
                  rotateGesturesEnabled: false,
                  tiltGesturesEnabled: false,
                  myLocationEnabled: false,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
