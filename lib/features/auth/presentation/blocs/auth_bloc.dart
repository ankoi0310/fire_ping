import 'dart:async';
import 'dart:io';

import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_out_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';
import 'package:fire_ping/features/user/domain/usecases/get_profile_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SupabaseClient client,
    required GetProfileUseCase getProfile,
    required SignInWithEmailPasswordUseCase signInWithEmailPassword,
    required SignUpWithEmailPasswordUseCase signUpWithEmailPassword,
    required SignOutUseCase signOut,
  }) : _client = client,
       _getProfile = getProfile,
       _signInWithEmailPassword = signInWithEmailPassword,
       _signUpWithEmailPassword = signUpWithEmailPassword,
       _signOut = signOut,
       super(const AuthState.initial()) {
    on<_Started>(_onStarted);
    on<_SignUpWithEmailPassword>(_onSignUpWithEmailPassword);
    on<_SignInWithEmailPassword>(_onSignInWithEmailPassword);
    on<_SignOut>(_onSignOut);
  }

  final SupabaseClient _client;
  final GetProfileUseCase _getProfile;
  final SignUpWithEmailPasswordUseCase _signUpWithEmailPassword;

  final SignInWithEmailPasswordUseCase _signInWithEmailPassword;

  final SignOutUseCase _signOut;

  Future<void> _onStarted(
    _Started event,
    Emitter<AuthState> emit,
  ) async {
    final session = _client.auth.currentSession;

    if (session == null) {
      emit(const AuthState.unauthenticated());
      return;
    }

    try {
      final result = await _getProfile();

      result.fold(
        (failure) => emit(const AuthState.unauthenticated()),
        (profile) {
          final appUser = AppUser(
            user: session.user,
            profile: profile,
          );
          emit(AuthState.authenticated(appUser));
        },
      );
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onSignUpWithEmailPassword(
    _SignUpWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _signUpWithEmailPassword(
      SignUpWithEmailPasswordParams(
        fullName: event.fullName,
        email: event.email,
        password: event.password,
        avatarFile: event.avatarFile,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.failure(failure.message)),
      (appUser) => emit(AuthState.authenticated(appUser)),
    );
  }

  Future<void> _onSignInWithEmailPassword(
    _SignInWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _signInWithEmailPassword(
      SignInWithEmailPasswordParams(
        email: event.email,
        password: event.password,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.failure(failure.message)),
      (appUser) => emit(AuthState.authenticated(appUser)),
    );
  }

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signOut();

    result.fold(
      (failure) => emit(AuthState.failure(failure.message)),
      (_) => emit(const AuthState.initial()),
    );
  }
}
