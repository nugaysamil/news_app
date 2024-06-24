import 'package:flutter/material.dart';
import 'package:news_app/feature/views/explore/explore_screen.dart';
import 'package:news_app/feature/views/home/home_screen.dart';
import 'package:news_app/feature/views/profile/profile_screen.dart';
import 'package:news_app/feature/views/saved/saved_screen.dart';

class NavigationHelper {
  static void navigate(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ExploreScreen()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SavedScreen()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
      default:
        break;
    }
  }
}
