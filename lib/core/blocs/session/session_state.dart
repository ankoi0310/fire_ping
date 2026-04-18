part of 'session_cubit.dart';

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState({AppUser? appUser}) = _SessionState;

  const SessionState._();

  bool get isAuthenticated => appUser != null;
}
