import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/core/usecase/usecase.dart';
import 'package:fire_ping/features/auth/domain/repositories/auth_repository.dart';

class SignInWithEmailPasswordUseCase
    implements UseCase<AppUser, SignInWithEmailPasswordParams> {
  const SignInWithEmailPasswordUseCase({required this.repository});

  final AuthRepository repository;

  @override
  ResultFuture<AppUser> call(
    SignInWithEmailPasswordParams params,
  ) async {
    return repository.signInWithEmailPassword(params);
  }
}

class SignInWithEmailPasswordParams {
  const SignInWithEmailPasswordParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
