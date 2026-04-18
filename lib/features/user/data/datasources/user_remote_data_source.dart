import 'package:fire_ping/core/error/auth_error_mapper.dart';
import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/features/user/data/models/profile_model.dart';
import 'package:fire_ping/features/user/domain/usecases/change_password_use_case.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class UserRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<void> changePassword(ChangePasswordParams params);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl({required this.client});

  final SupabaseClient client;

  @override
  Future<ProfileModel> getProfile() async {
    return client
        .from('profiles')
        .select()
        .single()
        .withConverter<ProfileModel>(ProfileModel.fromJson);
  }

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
}
