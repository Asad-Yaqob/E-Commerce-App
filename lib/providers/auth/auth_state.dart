import 'package:flutter/material.dart';

class AuthState {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  final bool isLoading;
  final bool isHide;
  final bool isChecked;

  AuthState({
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    this.isLoading = false,
    this.isHide = true,
    this.isChecked = false,
  });

  AuthState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    GlobalKey<FormState>? formKey,
    bool? isLoading,
    bool? isHide,
    bool? isChecked,
  }) {
    return AuthState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      formKey: formKey ?? this.formKey,
      isLoading: isLoading ?? this.isLoading,
      isHide: isHide ?? this.isHide,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
