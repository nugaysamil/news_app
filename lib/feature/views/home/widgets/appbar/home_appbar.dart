
import 'package:flutter/material.dart';
import 'package:news_app/feature/view_model/login/login_view_model.dart';
import 'package:news_app/feature/views/home/widgets/appbar/home_appbar_icons.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar();
  final LoginViewModel _loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    final user = _loginViewModel.getCurrentUser();
    final userName = user?.displayName;
    final userPhoto = _loginViewModel.getProfilePhoto();
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: userPhoto!.startsWith('http')
                ? NetworkImage(userPhoto)
                : AssetImage(userPhoto) as ImageProvider,
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                StringConstant.goodMorning,
                style: AppStyles.montserratTextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                userName.toString(),
                style: AppStyles.montserratTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Spacer(),
          AppBarIcons(
            Assets.icons.search.path,
          ),
          SizedBox(width: 10),
          AppBarIcons(
            Assets.icons.notification.path,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
