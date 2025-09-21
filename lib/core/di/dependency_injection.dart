import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:thimar/features/auth/forget_password/data/data_sources/forget_password_remote_data_source.dart';
import 'package:thimar/features/auth/forget_password/data/repos/forget_password_repo.dart';
import 'package:thimar/features/auth/forget_password/logic/forget_password_cubit.dart';
import 'package:thimar/features/auth/new_password/data/data_sources/new_password_remote_data_source.dart';
import 'package:thimar/features/auth/new_password/data/repos/new_password_repo.dart';
import 'package:thimar/features/auth/new_password/logic/new_password_cubit.dart';
import 'package:thimar/features/auth/register/presentation/data/data_sources/register_remote_data_source.dart';
import 'package:thimar/features/auth/register/presentation/data/repos/register_repo.dart';
import 'package:thimar/features/auth/register/presentation/logic/register_cubit.dart';
import 'package:thimar/features/auth/verifi_code/data/data_sources/verified_code_remote_data_source.dart';
import 'package:thimar/features/auth/verifi_code/data/repos/verified_code_repos.dart';
import 'package:thimar/features/auth/verifi_code/logic/verified_code_cubit.dart';
import 'package:thimar/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:thimar/features/home/data/repos/home_repos.dart';
import 'package:thimar/features/home/logic/home_cubit.dart';
import 'package:thimar/features/product_details/data/data_sources/product_details_remote_data_source.dart';
import 'package:thimar/features/product_details/data/repos/product_details_repos.dart';
import 'package:thimar/features/product_details/logic/product_details_cubit.dart';

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

  //verified code
  sl.registerLazySingleton<VerifiedCodeRemoteDataSource>(
      () => VerifiedCodeRemoteDataSource(dio));
  sl.registerLazySingleton<VerifiedCodeRepos>(
      () => VerifiedCodeReposImpl(verifiedCodeRemoteDataSource: sl()));
  sl.registerFactory<VerifiedCodeCubit>(() => VerifiedCodeCubit(sl()));

  //new Password
  sl.registerLazySingleton<NewPasswordRemoteDataSource>(
      () => NewPasswordRemoteDataSource(dio));
  sl.registerLazySingleton<NewPasswordRepo>(
      () => NewPasswordRepoImpl(newPasswordRemoteDataSource: sl()));
  sl.registerFactory<NewPasswordCubit>(() => NewPasswordCubit(sl()));

  //register
  sl.registerLazySingleton<RegisterRemoteDataSource>(
      () => RegisterRemoteDataSource(dio));
  sl.registerLazySingleton<RegisterRepo>(
      () => RegisterRepoImpl(registerRemoteDataSource: sl()));
  sl.registerFactory<RegisterCubit>(() => RegisterCubit(sl()));

  //home
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(dio));
  sl.registerLazySingleton<HomeRepos>(
      () => HomeReposImpl(remoteDataSource: sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));

  //product details
  sl.registerLazySingleton<ProductDetailsRemoteDataSource>(
      () => ProductDetailsRemoteDataSource(dio));
  sl.registerLazySingleton<ProductDetailsRepos>(
      () => ProductDetailsReposImpl(remoteDataSource: sl()));
  sl.registerFactory<ProductDetailsCubit>(() => ProductDetailsCubit(sl()));
}
