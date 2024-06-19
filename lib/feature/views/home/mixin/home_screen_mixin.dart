import 'package:flutter/material.dart';
import 'package:news_app/feature/views/home/home_screen.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/model/article_model.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

mixin HomeScreenMixin on State<HomeScreen> {

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> get bottomNavigationBarItems => [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              Assets.icons.home.path,
            ),
          ),
          label: StringConstant.home,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              Assets.icons.explore.path,
            ),
          ),
          label: StringConstant.explore,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              Assets.icons.saved.path,
            ),
          ),
          label: StringConstant.saved,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(
              Assets.icons.profile.path,
            ),
          ),
          label: StringConstant.profile,
        ),
      ];

  
}
