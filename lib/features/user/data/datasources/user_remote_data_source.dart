import 'package:fire_ping/core/error/auth_error_mapper.dart';
import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/features/user/domain/usecases/change_password_use_case.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class UserRemoteDataSource {
  Future<void> changePassword(ChangePasswordParams params);

  Future<void> signOut();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl({required this.client});

  final SupabaseClient client;

  @override
  Future<void> changePassword(ChangePasswordParams params) async {
    final session = client.auth.currentSession;

    if (session == null) {
      throw const ServerException('Người dùng chưa đăng nhập');
    }

    // print(session.user.role);
    // print(session.user.appMetadata);
    // print(session.user.userMetadata);

    try {
      await client.auth.updateUser(
        UserAttributes(password: params.newPassword),
      );
    } on AuthException catch (e) {
      final errorMapper = AuthErrorMapper.map(e);
      throw ServerException(errorMapper.message);
    }
  }

  @override
  Future<void> signOut() async {
    await client.auth.signOut();
  }
}
