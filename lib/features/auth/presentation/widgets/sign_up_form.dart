import 'package:fire_ping/core/shared/extensions/string_extension.dart';
import 'package:fire_ping/core/shared/widgets/app_form_field.dart';
import 'package:fire_ping/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    fullNameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      context.read<AuthBloc>().add(
        .signUpWithEmailPassword(
          fullName: fullNameController.text.trim(),
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
        crossAxisAlignment: .stretch,
        spacing: 16,
        children: [
          Column(
            spacing: 12,
            children: [
              AppTextFormField(
                title: 'Họ tên',
                enabled: state.maybeWhen(
                  loading: () => false,
                  orElse: () => true,
                ),
                controller: fullNameController,
                focusNode: fullNameFocusNode,
                hintText: 'Nhập tên của bạn',
                onFieldSubmitted: (value) {
                  emailFocusNode.requestFocus();
                },
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    fullNameFocusNode.requestFocus();
                    return 'Tên Không được để trống';
                  }

                  return null;
                },
              ),
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
                    emailFocusNode.requestFocus();
                    return 'Email Không được để trống';
                  }

                  if (!value.isEmail) {
                    emailFocusNode.requestFocus();
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
            ],
          ),
          Padding(
            padding: const .only(top: 16),
            child: ElevatedButton(
              onPressed: state.maybeWhen(
                loading: () => null,
                orElse: () => _onSubmit,
              ),
              child: const Text('Đăng ký'),
            ),
          ),
        ],
      ),
    );
  }
}
