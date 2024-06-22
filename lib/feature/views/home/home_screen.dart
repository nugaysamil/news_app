import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/product/widget/bottom_navigation/bottom_navigation_widget.dart';
import 'package:news_app/feature/views/home/widgets/appbar/home_appbar.dart';
import 'package:news_app/feature/views/home/news_slider.dart';
import 'package:news_app/feature/views/home/widgets/news_slider/widgets/breaking_see_more.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: BottomNavigationWidget(),
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
