import 'package:breaking_bad/data/repository/repository.dart';
import 'package:breaking_bad/data/sources/remote_data_source.dart';
import 'package:breaking_bad/data/web/app_api.dart';
import 'package:breaking_bad/data/web/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance()));

  instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance()));
}
