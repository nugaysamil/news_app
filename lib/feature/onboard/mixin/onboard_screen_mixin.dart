part of '../onboard_screen.dart';

mixin OnBoardingScreenMixin on State<OnboardScreen> {
  late PageController pageController;

  final onboardList = OnboardScreenList().onboardData;

  int pageIndex = 0;
  bool isLoading = false;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
