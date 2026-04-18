import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/core/shared/utils/typedefs.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';

abstract class AuthRepository {
  ResultFuture<AppUser> signUpWithEmailPassword(
    SignUpWithEmailPasswordParams params,
  );

  ResultFuture<AppUser> signInWithEmailPassword(
    SignInWithEmailPasswordParams params,
  );

  VoidFuture signOut();
}
