import 'package:flutter/material.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/views/onboard/onboard_screen.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

mixin ProfileScreenMixin {

  final LoginViewModel _loginViewModel = LoginViewModel();

  Future<void> signOut(BuildContext context) async {
    await _loginViewModel.signOut();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(StringConstant.successfullyLoggedOut)),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardScreen()),
    );
  }
}