
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  await Hive.initFlutter();

  Dio dio = DioFactory.getDio();
  // sl.registerLazySingleton<HomeRemoteDataSource>(
  //     () => HomeRemoteDataSource(dio));
  // sl.registerLazySingleton<HomeRepo>(
  //     () => HomeRepoImpl(homeRemoteDataSource: sl(), sl()));
  // sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));
  // sl.registerLazySingleton<HomeLocalRemoteDataSource>(
  //   () => HomeLocalRemoteDataSourceImpl(),
  // );
}
