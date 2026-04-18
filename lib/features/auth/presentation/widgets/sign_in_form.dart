import 'package:fire_ping/core/shared/extensions/build_context_extension.dart';
import 'package:fire_ping/core/shared/extensions/string_extension.dart';
import 'package:fire_ping/core/shared/widgets/app_form_field.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      context.read<AuthBloc>().add(
        .signInWithEmailPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .stretch,
        spacing: 16,
        children: [
          AppTextFormField(
            title: 'Email',
            enabled: state.maybeWhen(
              loading: () => false,
              orElse: () => true,
            ),
            controller: emailController,
            focusNode: emailFocusNode,
            hintText: 'Nhập email của bạn',
            onFieldSubmitted: (value) {
              passwordFocusNode.requestFocus();
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Email Không được để trống';
              }

              if (!value.isEmail) {
                return 'Email không hợp lệ';
              }

              return null;
            },
          ),
          AppPasswordFormField(
            enabled: state.maybeWhen(
              loading: () => false,
              orElse: () => true,
            ),
            controller: passwordController,
            focusNode: passwordFocusNode,
            onFieldSubmitted: (value) => _onSubmit(),
          ),
          Text.rich(
            textAlign: TextAlign.end,
            TextSpan(
              text: 'Quên mật khẩu?',
              style: context.textTheme.bodyMedium!.copyWith(
                color: context.colors.error,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ),
          Padding(
            padding: const .only(top: 16),
            child: ElevatedButton(
              onPressed: state.maybeWhen(
                loading: () => null,
                orElse: () => _onSubmit,
              ),
              child: const Text('Đăng nhập'),
            ),
          ),
        ],
      ),
    );
  }
}
