import 'package:fire_ping/config/router/app_router.dart';
import 'package:fire_ping/core/shared/extensions/build_context_extension.dart';
import 'package:fire_ping/core/shared/utils/app_util.dart';
import 'package:fire_ping/core/shared/widgets/loading_widget.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:fire_ping/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        state.whenOrNull(
          failure: (message) {
            showSnackBar(context, content: message);
          },
          authenticated: (user) {
            context.go(AppRoute.home);
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: const .symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: SizedBox(
                  height: context.height,
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .stretch,
                    children: [
                      buildContainer(context),
                      const SizedBox(height: 32),
                      const SignUpForm(),
                      Padding(
                        padding: const .only(top: 16),
                        child: OutlinedButton(
                          onPressed: () =>
                              context.go(AppRoute.signIn),
                          child: const Text('Đăng nhập'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              ))
                const LoadingWidget(text: 'Đang đăng ký...'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Text(
          'Orda Merchant',
          style: context.textTheme.displayMedium!.copyWith(
            fontWeight: .bold,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: [
                  context.colors.primary,
                  context.colors.primary.withValues(alpha: 0.7),
                ],
              ).createShader(const Rect.fromLTWH(0, 0, 80, 70)),
          ),
        ),
        Text(
          'Đăng ký tài khoản',
          style: context.textTheme.headlineLarge,
        ),
      ],
    );
  }
}
