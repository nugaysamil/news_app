import 'package:flutter/material.dart';
import 'package:news_app/feature/model/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginViewModel {
  final AuthService _authService = AuthService();

  Future<bool> signIn(BuildContext context) async {
    return await _authService.signInWithGoogle(context) != null;
  }

  User? getCurrentUser() {
    return _authService.getCurrentUser();
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
  String? getProfilePhoto() {
    return _authService.getCurrentUser()?.photoURL;
  }
}

