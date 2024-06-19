import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class HomeTabBar extends StatefulWidget {
  @override
  _HomeTabBarState createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  int _selectedIndex = 0;
  final List<String> _tabs = [
    StringConstant.feeds,
    StringConstant.popular,
    StringConstant.following
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_tabs.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 26.0),
              decoration: BoxDecoration(
                color: _selectedIndex == index ? Colors.white : Colors.orange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                _tabs[index],
                style: GoogleFonts.montserrat(
                  color:
                      _selectedIndex == index ? ColorName.orange : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
