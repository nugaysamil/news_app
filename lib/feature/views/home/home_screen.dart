// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/views/home/mixin/home_screen_mixin.dart';
import 'package:news_app/feature/views/home/widgets/appbar/home_appbar.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/init/theme/app_font_style.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

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
          _BreakingAndSeeMore(),
          
        ],
      ),
    );
  }
}

class _BreakingAndSeeMore extends StatelessWidget {
  const _BreakingAndSeeMore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstant.breakingNews,
            style: AppStyles.latoTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              StringConstant.seeMore,
              style: GoogleFonts.lato(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
