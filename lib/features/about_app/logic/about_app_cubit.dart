import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/extensions/navigation_extension.dart';
import 'package:thimar/core/helpers/helper_methods.dart';
import 'package:thimar/features/about_app/data/models/suggestions_and_complaints_request_body.dart';
import 'package:thimar/features/about_app/data/repos/about_app_repos.dart';

import 'about_app_state.dart';

class AboutAppCubit extends Cubit<AboutAppState> {
  final AboutAppRepos aboutAppRepos;

  AboutAppCubit(this.aboutAppRepos) : super(AboutAppState.initial());

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final titleController = TextEditingController();
  final messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> getAboutApp() async {
    emit(AboutAppState.aboutAppLoading());
    final response = await aboutAppRepos.getAboutApp();
    response.when(success: (data) {
      emit(AboutAppState.aboutAppSuccess(data));
    }, failure: (error) {
      emit(AboutAppState.aboutAppFailure(error.message.toString()));
    });
  }

  Future<void> getTerms() async {
    emit(AboutAppState.termsLoading());
    final response = await aboutAppRepos.getTerms();
    response.when(success: (data) {
      emit(AboutAppState.termsSuccess(data));
    }, failure: (error) {
      emit(AboutAppState.termsFailure(error.message.toString()));
    });
  }

  Future<void> getFaqs() async {
    emit(AboutAppState.faqsLoading());
    final response = await aboutAppRepos.getFaqs();
    response.when(success: (data) {
      emit(AboutAppState.faqsSuccess(data));
    }, failure: (error) {
      emit(AboutAppState.faqsFailure(error.message.toString()));
    });
  }

  Future<void> getPolicy() async {
    emit(AboutAppState.policyLoading());
    final response = await aboutAppRepos.getPolicy();
    response.when(success: (data) {
      emit(AboutAppState.policySuccess(data));
    }, failure: (error) {
      emit(AboutAppState.policyFailure(error.message.toString()));
    });
  }

  Future<void> sendSuggestionAndComplaints(BuildContext context) async {
    emit(AboutAppState.sendSuggestionLoading());
    final response = await aboutAppRepos
        .sendSuggestionsAndComplaints(SuggestionsAndComplaintsRequestBody(
      name: nameController.text,
      phone: phoneController.text,
      title: titleController.text,
      content: messageController.text,
    ));
    response.when(success: (data) {
      emit(AboutAppState.sendSuggestionSuccess(data));
      showToast(message: data.message.toString());
      context.pop();
    }, failure: (error) {
      emit(AboutAppState.sendSuggestionFailure(error.message.toString()));
      showToast(message: error.message.toString(), isError: true);
    });
  }

  Future<void> getContactData() async {
    emit(AboutAppState.getContactLoading());
    final response = await aboutAppRepos.getContactData();
    response.when(success: (data) {
      emit(AboutAppState.getContactSuccess(data));
    }, failure: (error) {
      emit(AboutAppState.getContactFailure(error.message.toString()));
    });
  }
}
