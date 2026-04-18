part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.signUpWithEmailPassword({
    required String fullName,
    required String email,
    required String password,
    File? avatarFile,
  }) = _SignUpWithEmailPassword;

  const factory AuthEvent.signInWithEmailPassword({
    required String email,
    required String password,
  }) = _SignInWithEmailPassword;

  const factory AuthEvent.signOut() = _SignOut;
}
