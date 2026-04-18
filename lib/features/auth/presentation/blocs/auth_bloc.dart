import 'dart:async';
import 'dart:io';

import 'package:fire_ping/core/domain/entities/app_user.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_in_with_email_password_use_case.dart';
import 'package:fire_ping/features/auth/domain/usecases/sign_up_with_email_password_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignInWithEmailPasswordUseCase signInWithEmailPassword,
    required SignUpWithEmailPasswordUseCase signUpWithEmailPassword,
  }) : _signInWithEmailPassword = signInWithEmailPassword,
       _signUpWithEmailPassword = signUpWithEmailPassword,
       super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) => emit(const AuthState.loading()));
    on<_SignUpWithEmailPassword>(_onSignUpWithEmailPassword);
    on<_SignInWithEmailPassword>(_onSignInWithEmailPassword);
  }

  final SignUpWithEmailPasswordUseCase _signUpWithEmailPassword;

  final SignInWithEmailPasswordUseCase _signInWithEmailPassword;

  Future<void> _onSignUpWithEmailPassword(
    _SignUpWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
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
      (appUser) => emit(AuthState.success(appUser)),
    );
  }

  Future<void> _onSignInWithEmailPassword(
    _SignInWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
    final result = await _signInWithEmailPassword(
      SignInWithEmailPasswordParams(
        email: event.email,
        password: event.password,
      ),
    );

    result.fold(
      (failure) => emit(AuthState.failure(failure.message)),
      (appUser) => emit(AuthState.success(appUser)),
    );
  }
}
