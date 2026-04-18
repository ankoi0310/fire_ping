import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/core/error/failure.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:fire_ping/features/auth/domain/repositories/auth_repository.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({required this.remoteDataSource});

  final AuthRemoteDataSource remoteDataSource;

  @override
  ResultFuture<AppUser> signUpWithEmailPassword(
    SignUpWithEmailPasswordParams params,
  ) async {
    try {
      final user = await remoteDataSource.signUpWithEmailPassword(
        params,
      );
      return Right(user);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  ResultFuture<AppUser> signInWithEmailPassword(
    SignInWithEmailPasswordParams params,
  ) async {
    try {
      final user = await remoteDataSource.signInWithEmailPassword(
        params,
      );
      return Right(user);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  VoidFuture signOut() async {
    await remoteDataSource.signOut();
    return const Right(unit);
  }
}
