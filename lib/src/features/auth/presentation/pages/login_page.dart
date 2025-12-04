import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_task_onaidocs/gen/assets.gen.dart';
import 'package:test_task_onaidocs/src/core/theme/text_styles.dart';
import 'package:test_task_onaidocs/src/core/widgets/app_button.dart';
import 'package:test_task_onaidocs/src/core/widgets/app_text_field.dart';
import '../../../../core/router/router_paths.dart';
import '../../../../core/theme/colors.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => AuthBloc(), child: const _LoginView());
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isAuthenticated) {
              context.go(RoutePaths.home);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(child: Assets.logo.logo.svg()),

                          Text(
                            'Добро пожаловать!',
                            style: AppTextStyles.h2.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 32),
                          _LoginForm(
                            formKey: _formKey,
                            loginController: _loginController,
                            passwordController: _passwordController,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    AppButton(
                      text: 'Войти',
                      onPressed: () {
                        if (!(_formKey.currentState?.validate() ?? false)) {
                          return;
                        }
                        final bloc = context.read<AuthBloc>();
                        bloc.add(AuthEvent.emailChanged(_loginController.text));
                        bloc.add(
                          AuthEvent.passwordChanged(_passwordController.text),
                        );
                        bloc.add(const AuthEvent.submitted());
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController loginController;
  final TextEditingController passwordController;
  const _LoginForm({
    super.key,
    required this.formKey,
    required this.loginController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          formKey: formKey,
          controller: loginController,
          label: 'Логин',
          isRequired: true,
          keyboardType: TextInputType.emailAddress,
          showClear: true,
          validator: (value) =>
              value != null && value.trim().isNotEmpty ? null : 'Введите логин',
        ),
        const SizedBox(height: 12),
        AppTextField(
          formKey: formKey,
          controller: passwordController,
          label: 'Пароль',
          isRequired: true,
          obscureText: true,
          showClear: true,
          validator: (value) =>
              value != null && value.length >= 4 ? null : 'Минимум 4 символа',
        ),
      ],
    );
  }
}
