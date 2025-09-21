class ApiConstants {
  static const String apiBaseUrl = "https://thimar.amr.aait-d.com/public/api";
  static const String loginEndPoint = "/login";
  static const String forgetPasswordEndPoint = "/forget_password";
  static const String checkCodeEndPoint = "/check_code";
  static const String newPasswordPoint = "/reset_password";
  static const String clientRegisterEndPoint = "/client_register";
  static const String verifiedAccountEndPoint = "/verify";
  static const String resendCodeEndPoint = "/resend_code";
  static const String sliderEndPoint = "/sliders";
  static const String categoriesEndPoint = "/categories";
  static const String categoryProductsEndPoint = "/categories/{id}";
  static const String homeProductsEndPoint = "/products";
  static const String productDetailsEndPoint = "/products/{id}";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
