import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_app_state.freezed.dart';

@freezed
class AboutAppState<T> with _$AboutAppState {
  const factory AboutAppState.initial() = AboutAppInitial;

  const factory AboutAppState.aboutAppLoading() = AboutAppLoading;

  const factory AboutAppState.aboutAppSuccess(T data) = AboutAppSuccess;

  const factory AboutAppState.aboutAppFailure(String errorMessage) =
      AboutAppFailure;

  const factory AboutAppState.termsLoading() = TermsLoading;

  const factory AboutAppState.termsSuccess(T data) = TermsSuccess;

  const factory AboutAppState.termsFailure(String errorMessage) = TermsFailure;

  const factory AboutAppState.faqsLoading() = FaqsLoading;

  const factory AboutAppState.faqsSuccess(T data) = FaqsSuccess;

  const factory AboutAppState.faqsFailure(String errorMessage) = FaqsFailure;

  const factory AboutAppState.policyLoading() = PolicyLoading;

  const factory AboutAppState.policySuccess(T data) = PolicySuccess;

  const factory AboutAppState.policyFailure(String errorMessage) =
      PolicyFailure;

  const factory AboutAppState.sendSuggestionLoading() = SendSuggestionLoading;

  const factory AboutAppState.sendSuggestionSuccess(T data) = SendSuggestionSuccess;

  const factory AboutAppState.sendSuggestionFailure(String errorMessage) =
  SendSuggestionFailure;
}
