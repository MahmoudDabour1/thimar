import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;

  const factory ProfileState.getProfileLoading() = GetProfileLoading;

  const factory ProfileState.getProfileSuccess(T data) = GetProfileSuccess;

  const factory ProfileState.getProfileFailure(String errorMessage) =
      GetProfileFailure;

  const factory ProfileState.updateProfileLoading() = UpdateProfileLoading;

  const factory ProfileState.updateProfileSuccess(T data) =
      UpdateProfileSuccess;

  const factory ProfileState.updateProfileFailure(String errorMessage) =
      UpdateProfileFailure;

  const factory ProfileState.addImage() = AddImage;

  const factory ProfileState.aboutAppLoading() = AboutAppLoading;

  const factory ProfileState.aboutAppSuccess(T data) = AboutAppSuccess;

  const factory ProfileState.aboutAppFailure(String errorMessage) =
      AboutAppFailure;

  const factory ProfileState.termsLoading() = TermsLoading;

  const factory ProfileState.termsSuccess(T data) = TermsSuccess;

  const factory ProfileState.termsFailure(String errorMessage) = TermsFailure;

  const factory ProfileState.faqsLoading() = FaqsLoading;

  const factory ProfileState.faqsSuccess(T data) = FaqsSuccess;

  const factory ProfileState.faqsFailure(String errorMessage) = FaqsFailure;

  const factory ProfileState.policyLoading() = PolicyLoading;

  const factory ProfileState.policySuccess(T data) = PolicySuccess;

  const factory ProfileState.policyFailure(String errorMessage) = PolicyFailure;
}
