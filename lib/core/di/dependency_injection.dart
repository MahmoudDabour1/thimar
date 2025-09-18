import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:thimar/features/auth/forget_password/data/data_sources/forget_password_remote_data_source.dart';
import 'package:thimar/features/auth/forget_password/data/repos/forget_password_repo.dart';
import 'package:thimar/features/auth/forget_password/logic/forget_password_cubit.dart';
import '../../features/auth/login/data/data_source/login_remote_data_source.dart';
import '../../features/auth/login/data/repos/login_repo.dart';
import '../../features/auth/login/logic/login_cubit.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  await Hive.initFlutter();

  Dio dio = DioFactory.getDio();

  //login
  sl.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSource(dio));
  sl.registerLazySingleton<LoginRepo>(
      () => LoginRepoImpl(loginRemoteDataSource: sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

//forget password
  sl.registerLazySingleton<ForgetPasswordRemoteDataSource>(
      () => ForgetPasswordRemoteDataSource(dio));
  sl.registerLazySingleton<ForgetPasswordRepo>(
      () => ForgetPasswordRepoImpl(forgetPasswordRemoteDataSource: sl()));
  sl.registerFactory<ForgetPasswordCubit>(() => ForgetPasswordCubit(sl()));
}
