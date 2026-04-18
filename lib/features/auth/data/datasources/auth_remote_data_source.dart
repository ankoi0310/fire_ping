import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/core/error/auth_error_mapper.dart';
import 'package:fire_ping/core/error/exceptions.dart';
import 'package:fire_ping/core/services/supabase_storage_service.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';
import 'package:fire_ping/features/user/data/mapper/profile_mapper.dart';
import 'package:fire_ping/features/user/data/models/profile_model.dart';
import 'package:mime/mime.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  Future<AppUser> signUpWithEmailPassword(
    SignUpWithEmailPasswordParams params,
  );

  Future<AppUser> signInWithEmailPassword(
    SignInWithEmailPasswordParams params,
  );
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required this.client,
    required this.storage,
  });

  final SupabaseClient client;
  final SupabaseStorageService storage;

  @override
  Future<AppUser> signUpWithEmailPassword(
    SignUpWithEmailPasswordParams params,
  ) async {
    String? avatarUrl;
    try {
      if (params.avatarFile != null) {
        final file = params.avatarFile!;
        final contentType = lookupMimeType(file.path) ?? 'image/jpeg';
        final extension = extensionFromMime(contentType);
        final fileName =
            '${DateTime.now().millisecondsSinceEpoch}.$extension';

        avatarUrl = await storage.uploadImage(
          bucket: 'images',
          path: 'menu_items/$fileName',
          file: file,
          contentType: contentType,
        );
      }

      final response = await client.auth.signUp(
        email: params.email,
        password: params.password,
        data: {'full_name': params.fullName, 'avatar_url': avatarUrl},
      );

      if (response.user == null) {
        throw const ServerException('Tài khoản không tồn tại');
      }

      final user = response.user!;
      final profile = await client
          .from('profiles')
          .select()
          .eq('id', user.id)
          .single()
          .withConverter<ProfileModel>(ProfileModel.fromJson);

      return AppUser(user: user, profile: profile.toEntity());
    } on AuthException catch (e) {
      final errorMapper = AuthErrorMapper.map(e);
      throw ServerException(errorMapper.message);
    }
  }

  @override
  Future<AppUser> signInWithEmailPassword(
    SignInWithEmailPasswordParams params,
  ) async {
    try {
      final response = await client.auth.signInWithPassword(
        email: params.email,
        password: params.password,
      );

      if (response.user == null) {
        throw const ServerException('Tài khoản không tồn tại');
      }

      final user = response.user!;
      final profile = await client
          .from('profiles')
          .select()
          .eq('id', user.id)
          .single()
          .withConverter<ProfileModel>(ProfileModel.fromJson);

      return AppUser(user: user, profile: profile.toEntity());
    } on AuthException catch (e) {
      final errorMapper = AuthErrorMapper.map(e);
      throw ServerException(errorMapper.message);
    }
  }
}
