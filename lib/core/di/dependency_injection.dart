import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:thimar/features/auth/login/presentation/data/data_source/login_remote_data_source.dart';
import 'package:thimar/features/auth/login/presentation/data/repos/login_repo.dart';
import 'package:thimar/features/auth/login/presentation/logic/login_cubit.dart';

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
}
