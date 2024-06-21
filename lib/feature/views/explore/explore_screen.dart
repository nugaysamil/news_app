import 'package:flutter/material.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/views/explore/widgets/appbar/explore_screen_appbar.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final LoginViewModel _loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    final userPhoto = _loginViewModel.getProfilePhoto();

    return Scaffold(
      appBar: ExploreAppBar(
        userPhoto: userPhoto,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
