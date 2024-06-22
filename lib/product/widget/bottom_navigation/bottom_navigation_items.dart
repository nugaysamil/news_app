import 'package:flutter/material.dart';
import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class BottomNavigationItems {
  static List<BottomNavigationBarItem> getBottomNavigationBarItems() {
    return [
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
}
