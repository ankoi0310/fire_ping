import 'dart:io';

import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/auth/domain/repositories/auth_repository.dart';

class SignUpWithEmailPasswordUseCase
    implements UseCase<AppUser, SignUpWithEmailPasswordParams> {
  const SignUpWithEmailPasswordUseCase({required this.repository});

  final AuthRepository repository;

  @override
  ResultFuture<AppUser> call(
    SignUpWithEmailPasswordParams params,
  ) async {
    return repository.signUpWithEmailPassword(params);
  }
}

class SignUpWithEmailPasswordParams {
  const SignUpWithEmailPasswordParams({
    required this.fullName,
    required this.email,
    required this.password,
    this.avatarFile,
  });

  final String fullName;
  final String email;
  final String password;
  final File? avatarFile;
}
