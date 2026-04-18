import 'package:fire_ping/core/blocs/session/session_cubit.dart';
import 'package:fire_ping/core/services/supabase_storage_service.dart';
import 'package:fire_ping/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:fire_ping/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:fire_ping/features/auth/domain/repositories/auth_repository.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:fire_ping/features/user/data/datasources/user_remote_data_source.dart';
import 'package:fire_ping/features/user/data/repositories/user_repository_impl.dart';
import 'package:fire_ping/features/user/domain/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt sl = GetIt.instance;

Future<void> initInjection() async {
  sl
    ..registerLazySingleton(() => Supabase.instance.client)
    ..registerLazySingleton<SupabaseStorageService>(
      () => SupabaseStorageServiceImpl(client: sl()),
    )
    ..registerLazySingleton(() => SessionCubit(client: sl()));

  _initAuth(sl);
  _initUser(sl);
}

void _initAuth(GetIt sl) {
  sl
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(client: sl(), storage: sl()),
    )
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl()),
    )
    ..registerLazySingleton(
      () => SignUpWithEmailPasswordUseCase(repository: sl()),
    )
    ..registerLazySingleton(
      () => SignInWithEmailPasswordUseCase(repository: sl()),
    )
    ..registerFactory(
      () => AuthBloc(
        signUpWithEmailPassword: sl(),
        signInWithEmailPassword: sl(),
      ),
    );
}

void _initUser(GetIt serviceLocator) {
  sl
    ..registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(client: sl()),
    )
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: sl()),
    );
}
