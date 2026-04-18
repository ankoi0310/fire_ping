import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/core/error/failure.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/user/data/datasources/user_remote_data_source.dart';
import 'package:fire_ping/features/user/domain/repositories/user_repository.dart';
import 'package:fire_ping/features/user/domain/usecases/change_password_use_case.dart';
import 'package:fpdart/fpdart.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl({required this.remoteDataSource});

  final UserRemoteDataSource remoteDataSource;

  @override
  VoidFuture changePassword(ChangePasswordParams params) async {
    try {
      await remoteDataSource.changePassword(params);
      return right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Đổi mật khẩu không thành công: $e'));
    }
  }

  @override
  VoidFuture signOut() async {
    await remoteDataSource.signOut();
    return right(unit);
  }
}
