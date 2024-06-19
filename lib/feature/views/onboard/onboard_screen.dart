// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/feature/views/login/login_screen.dart';

import 'package:news_app/feature/model/onboard/onboard_description_list.dart';
import 'package:news_app/product/generation/colors.gen.dart';
import 'package:news_app/product/widget/custom/custom_appbar.dart';

part 'mixin/onboard_screen_mixin.dart';
part 'widget/onboard_screen_content.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen>
    with OnBoardingScreenMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PageView.builder(
        itemCount: onboardList.length,
        controller: pageController,
        onPageChanged: (value) => updatePageIndex(value),
        itemBuilder: (context, index) {
          return _OnboardContent(
            imagePath: onboardList[index].imagePath,
            title: onboardList[index].title,
            buttonText: onboardList[index].buttonText,
            description: onboardList[index].description,
          );
        },
      ),
    );
  }
}
