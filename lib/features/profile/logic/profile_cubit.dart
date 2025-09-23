import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/profile/data/repos/profile_repo.dart';
import 'package:thimar/features/profile/logic/profile_state.dart';

import '../data/models/update_profile_data_request_model.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;

  ProfileCubit(this.profileRepo) : super(ProfileState.initial());

  File? image;
  String? oldImage;
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();

  Future<void> getProfileData() async {
    emit(ProfileState.getProfileLoading());
    final response = await profileRepo.getProfileData();
    response.when(
      success: (data) {
        emit(
          ProfileState.getProfileSuccess(data),
        );
        oldImage = data.data?.image;
      },
      failure: (error) {
        emit(
          ProfileState.getProfileFailure(
            error.message.toString(),
          ),
        );
      },
    );
  }

  Future<void> updateProfileData(BuildContext context) async {
    emit(ProfileState.updateProfileLoading());
    final response =
        await profileRepo.updateProfileData(UpdateProfileDataRequestModel(
      fullName: nameController.text,
      cityId: "12",
      phone: phoneController.text,
      image: image,
      oldImage: oldImage,
    ));
    response.when(success: (data) {
      emit(ProfileState.updateProfileSuccess(data));
      showToast(message: data.message.toString());
      getProfileData();
    }, failure: (error) {
      emit(ProfileState.updateProfileFailure(error.message.toString()));
    });
  }

  void updateSelectedImages(File newImage) {
    image = newImage;
    emit(ProfileState.addImage());
  }

  Future<void> getAboutApp() async {
    emit(ProfileState.aboutAppLoading());
    final response = await profileRepo.getAboutApp();
    response.when(success: (data) {
      emit(ProfileState.aboutAppSuccess(data));
    }, failure: (error) {
      emit(ProfileState.aboutAppFailure(error.message.toString()));
    });
  }

  Future<void> getTerms() async {
    emit(ProfileState.termsLoading());
    final response = await profileRepo.getTerms();
    response.when(success: (data) {
      emit(ProfileState.termsSuccess(data));
    }, failure: (error) {
      emit(ProfileState.termsFailure(error.message.toString()));
    });
  }

  Future<void> getFaqs() async {
    emit(ProfileState.faqsLoading());
    final response = await profileRepo.getFaqs();
    response.when(success: (data) {
      emit(ProfileState.faqsSuccess(data));
    }, failure: (error) {
      emit(ProfileState.faqsFailure(error.message.toString()));
    });
  }

  Future<void> getPolicy() async {
    emit(ProfileState.policyLoading());
    final response = await profileRepo.getPolicy();
    response.when(success: (data) {
      emit(ProfileState.policySuccess(data));
    }, failure: (error) {
      emit(ProfileState.policyFailure(error.message.toString()));
    });
  }
}
