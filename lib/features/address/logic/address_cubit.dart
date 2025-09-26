import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/address/data/models/insert_address_request_body.dart';
import 'package:thimar/features/address/data/repos/address_repo.dart';
import 'package:thimar/features/address/logic/address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  final AddressRepo addressRepo;

  AddressCubit(this.addressRepo) : super(AddressState.initial());

  final phoneController = TextEditingController();
  final descriptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isUpdateOrDelete = false;

  void updateAddresses() {
    emit(AddressState.updateAddress());
  }

  Future<void> getAddresses() async {
    isUpdateOrDelete ? null : emit(AddressState.getAddressLoading());
    final response = await addressRepo.getAddresses();
    response.when(success: (data) {
      emit(AddressState.getAddressSuccess(data));
    }, failure: (error) {
      emit(AddressState.getAddressFailure(error.message.toString()));
    });
  }

  Future<void> deleteAddress(int addressId) async {
    emit(AddressState.deleteAddressLoading(addressId));
    final response = await addressRepo.deleteAddresses(addressId);
    response.when(success: (data) {
      isUpdateOrDelete = true;
      emit(AddressState.deleteAddressSuccess(addressId, data));
      getAddresses();
    }, failure: (error) {
      emit(AddressState.deleteAddressFailure(
          addressId, error.message.toString()));
    });
  }

  Future<void> insertAddress(
      {required BuildContext context,
      required String lat,
      required String lng,
      required bool isDefault,
      required String type}) async {
    emit(AddressState.insertAddressLoading());
    final response = await addressRepo.insertAddresses(
      InsertAddressRequestBody(
        phone: phoneController.text,
        location: descriptionController.text,
        lat: lat,
        lng: lng,
        type: type,
        isDefault: isDefault == true ? "1" : "0",
      ),
    );
    response.when(success: (data) {
      emit(AddressState.insertAddressSuccess(data));
      showToast(message: data.message.toString());
      getAddresses();
      context.pop();
      phoneController.clear();
      descriptionController.clear();
    }, failure: (error) {
      showToast(message: error.message.toString(), isError: true);
      emit(AddressState.insertAddressFailure(error.message.toString()));
    });
  }

  Future<void> updateAddress({
    required int addressId,
    required String lat,
    required String lng,
    required String type,
    required bool isDefault,
    required BuildContext context,
  }) async {
    emit(AddressState.updateAddressLoading(addressId));
    final response = await addressRepo.updateAddresses(
      id: addressId,
      insertAddressRequestBody: InsertAddressRequestBody(
        phone: phoneController.text,
        location: descriptionController.text,
        lat: lat,
        lng: lng,
        type: type,
        isDefault: isDefault == true ? "1" : "0",
      ),
    );
    response.when(success: (data) {
      isUpdateOrDelete = true;
      emit(AddressState.updateAddressSuccess(addressId, data));
      getAddresses();
      context.pop();
      phoneController.clear();
      descriptionController.clear();
    }, failure: (error) {
      emit(AddressState.updateAddressFailure(
          addressId, error.message.toString()));
    });
  }
}
