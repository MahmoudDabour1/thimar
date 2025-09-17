import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/shared_pref_helper.dart';
import '../helpers/shared_pref_keys.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addDioHeaders();
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    final token =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

    dio?.options.headers = {
      'Accept': 'application/json',
      'x-secret-key': "2KwG1hilCWiCLyEX4bwhdZJBmtjvIpqNGwn",
      'Content-Type': 'application/json',
      if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
      'x-secret-key': "2KwG1hilCWiCLyEX4bwhdZJBmtjvIpqNGwn",
    };
  }

  static void setContentTypeForMultipart() {
    dio?.options.headers['Content-Type'] = 'multipart/form-data';
  }

  static void updateLanguageHeader(String languageCode) {
    dio?.options.headers['Accept-Language'] = languageCode;
  }

  static void setContentType(String contentType) {
    dio?.options.headers['Content-Type'] = contentType;
  }

  static void clearTokenFromHeader() {
    dio?.options.headers.remove('Authorization');
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
