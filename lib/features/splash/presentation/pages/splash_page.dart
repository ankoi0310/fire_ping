import 'package:fire_ping/config/router/app_router.dart';
import 'package:fire_ping/di.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    // TODO: Add your global data fetching here
    // Example: fetch fire stations, settings, etc.
    // await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    // After loading data, check auth state and navigate
    final authState = sl<AuthBloc>().state;
    authState.when(
      authenticated: (appUser) {
        if (mounted) {
          context.go(AppRoute.home);
        }
      },
      unauthenticated: () {
        if (mounted) {
          context.go(AppRoute.signIn);
        }
      },
      failure: (_) {
        if (mounted) {
          context.go(AppRoute.signIn);
        }
      },
      initial: () {
        // Still loading, stay on splash
      },
      loading: () {
        // Still loading, stay on splash
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, authState) {
            // If auth state changes while on splash, navigate accordingly
            authState.whenOrNull(
              authenticated: (appUser) {
                if (mounted) {
                  context.go(AppRoute.home);
                }
              },
              unauthenticated: () {
                if (mounted) {
                  context.go(AppRoute.signIn);
                }
              },
            );
          },
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Loading...'),
            ],
          ),
        ),
      ),
    );
  }
}
