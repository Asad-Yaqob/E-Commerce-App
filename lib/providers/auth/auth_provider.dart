import 'package:capjewel/services/authentication/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/utils/network/network_manager.dart';
import 'package:capjewel/providers/auth/auth_state.dart';

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider()
      : super(AuthState(
          emailController: TextEditingController(),
          formKey: GlobalKey<FormState>(),
          passwordController: TextEditingController(),
        ));

  final networkManager = NetworkManager();

  Future<void> registerUserWithEmailAndPassword() async {
    try {
      // Start loading
      setLoading(true);

      // Check internet connection
      final hasInternet = await networkManager.isConnected();
      if (!hasInternet) return;

      // validate form fields
      if (!state.formKey.currentState!.validate()) return;

      // Perform authentication logic
      await AuthService().registerUser(
        state.emailController.text,
        state.passwordController.text,
      );

      state.emailController.text = '';
      state.passwordController.text = '';
      // print(result);
    } catch (e) {
      print(e);
    } finally {
      setLoading(false);
    }
  }

  Future<void> loginUserWithEmailAndPassword() async {
    try {
      setLoading(true);

      // Check internet connection
      final hasInternet = await networkManager.isConnected();
      if (!hasInternet) return;

      // validate form fields
      if (!state.formKey.currentState!.validate()) return;

      // Perform authentication logic
      await AuthService().loginUser(
        state.emailController.text,
        state.passwordController.text,
      );

      state.emailController.text = '';
      state.passwordController.text = '';
    } catch (e) {
      print(e);
    } finally {
      setLoading(false);
    }
  }

  Future<void> signOut() async {
    try {
      // Start loading
      setLoading(true);

      // Check internet connection
      final hasInternet = await networkManager.isConnected();
      if (!hasInternet) return;

      // Perform logout logic
      await AuthService().logoutUser();
    } catch (e) {
      print(e);
    } finally {
      setLoading(false);
    }
  }

  void setLoading(bool loading) {
    state = state.copyWith(isLoading: loading);
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isHide: !state.isHide);
  }

  void toggleRememberMe() {
    state = state.copyWith(isChecked: !state.isChecked);
  }

  @override
  void dispose() {
    state.emailController.dispose();
    state.passwordController.dispose();
    super.dispose();
  }
}

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider();
});
