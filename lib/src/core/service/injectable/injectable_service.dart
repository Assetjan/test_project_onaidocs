import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:test_task_onaidocs/src/features/home/presentation/bloc/home_bloc.dart';

import '../storage/storage_service.dart';
import '../storage/storage_service_impl.dart';
import '../../api/client/dio/dio_interceptor.dart';
import '../../../features/auth/presentation/bloc/auth_bloc.dart';

import '../../../features/tasks/data/datasources/local/tasks_local_data_source.dart';
import '../../../features/tasks/data/repositories/tasks_repository_impl.dart';
import '../../../features/tasks/domain/repositories/tasks_repository.dart';
import '../../../features/tasks/presentation/bloc/tasks_page_bloc.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<StorageService>(StorageServiceImpl());

  final dio = Dio();
  DioInterceptor(dio);
  getIt.registerSingleton<Dio>(dio);

  getIt.registerLazySingleton<TasksLocalDataSource>(
    () => TasksLocalDataSource(),
  );

  getIt.registerLazySingleton<TasksRepository>(
    () => TasksRepositoryImpl(getIt<TasksLocalDataSource>()),
  );

  getIt.registerFactory<AuthBloc>(() => AuthBloc());

  getIt.registerFactory<HomeBloc>(() => HomeBloc());

  getIt.registerFactory<TasksPageBloc>(
    () => TasksPageBloc(getIt<TasksRepository>()),
  );
}
