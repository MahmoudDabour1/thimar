import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/get_address_response_model.dart';

part 'address_state.freezed.dart';

@freezed
class AddressState<T> with _$AddressState {
  const factory AddressState.initial() = AddressInitial;

  const factory AddressState.getAddressLoading() = GetAddressLoading;

  const factory AddressState.getAddressSuccess(GetAddressResponseModel data) =
      GetAddressSuccess;

  const factory AddressState.getAddressFailure(String errorMessage) =
      GetAddressFailure;

  const factory AddressState.insertAddressLoading() = InsertAddressLoading;

  const factory AddressState.insertAddressSuccess(T data) =
      InsertAddressSuccess;

  const factory AddressState.insertAddressFailure(String errorMessage) =
      InsertAddressFailure;

  const factory AddressState.updateAddressLoading(int id) =
      UpdateAddressLoading;

  const factory AddressState.updateAddressSuccess(int id, T data) =
      UpdateAddressSuccess;

  const factory AddressState.updateAddressFailure(int id, String errorMessage) =
      UpdateAddressFailure;

  const factory AddressState.deleteAddressLoading(int id) =
      DeleteAddressLoading;

  const factory AddressState.deleteAddressSuccess(int id, T data) =
      DeleteAddressSuccess;

  const factory AddressState.deleteAddressFailure(int id, String errorMessage) =
      DeleteAddressFailure;

  const factory AddressState.updateAddress() = UpdateAddress;
}
