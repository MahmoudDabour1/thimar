import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../logic/address_cubit.dart';

class InsertAddressFormModel {
  final LatLng? currentLatLng;
  final bool isEdit;
  final String? userSelectedType;
  final String? userSelectedPhone;
  final String? userSelectedDescription;
  final int? addressId;
  final AddressCubit cubit;

  InsertAddressFormModel({
    this.currentLatLng,
    required this.isEdit,
    this.userSelectedType,
    this.userSelectedPhone,
    this.userSelectedDescription,
    this.addressId,
    required this.cubit,
  });
}
