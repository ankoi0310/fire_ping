part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initialize() = _Initialize;

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

  const factory AuthEvent.authStateChanged(
    supabase.AuthState authState,
  ) = _AuthStateChanged;
}
