import 'package:flutter/material.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_helper.dart';

class NavigationController extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onItemTapped(BuildContext context, int index) {
    if (index == _selectedIndex) return;

    _selectedIndex = index;
    notifyListeners(); 
    NavigationHelper.navigate(context, index);
  }
}
