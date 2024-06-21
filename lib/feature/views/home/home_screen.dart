import 'package:flutter/material.dart';
import 'package:news_app/feature/views/home/mixin/home_screen_mixin.dart';
import 'package:news_app/feature/views/home/widgets/appbar/home_appbar.dart';
import 'package:news_app/feature/views/home/news_slider.dart';
import 'package:news_app/feature/views/home/widgets/news_slider/widgets/breaking_see_more.dart';
import 'package:news_app/product/generation/colors.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeScreenMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.white60,
        backgroundColor: ColorName.orange,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
      body: Column(
        children: [
          BreakingAndSeeMore(),
          Expanded(
            child: NewsView(),
          ),
          //News Slider
        ],
      ),
    );
  }
}
