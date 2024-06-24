import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/views/onboard/onboard_screen.dart';
import 'package:news_app/feature/views/profile/mixin/profile_screen_mixin.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_widget.dart';

part 'appbar/profile_appbar.dart';
part 'text/user_name_text.dart';
part 'text/user_email_text.dart';
part 'text/settings_text.dart';
part 'text/statistic_container.dart';
part 'image/user_circle_avatar.dart';
part 'text/settings_list.dart';
part 'button/log_out_button.dart';

class ProfileScreen extends StatelessWidget with ProfileScreenMixin {
  ProfileScreen({super.key});
  final LoginViewModel _loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    final userPhoto = _loginViewModel.getProfilePhoto();
    final userEmail = _loginViewModel.getUserEmail();
    final userName = _loginViewModel.getCurrentUser();

    return Scaffold(
      appBar: _ProfileAppBar(),
      bottomNavigationBar: BottomNavigationWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: _UserCircleAvatar(userPhoto: userPhoto!)),
            UserNameText(userName: userName),
            Center(child: UserEmail(userEmail: userEmail)),
            Center(child: StatisticsRow()),
            _SettingsText(),
            _SettingsList(),
            _LogOutButton(onPressed: () => signOut(context))
          ],
        ),
      ),
    );
  }
}
