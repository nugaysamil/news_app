import 'package:news_app/product/generation/assets.gen.dart';
import 'package:news_app/product/utility/constant/string_constant.dart';

class Onboard {
  final String imagePath;
  final String title;
  final String description;

  final String buttonText;
  Onboard({
    required this.imagePath,
    required this.title,
    required this.buttonText,
    required this.description,
  });
}

class OnboardScreenList {
  final List<Onboard> onboardData = [
    Onboard(
      imagePath: Assets.images.splashScreen1.path,
      title: StringConstant.bestDigital,
      description: StringConstant.startExploring,
      buttonText: StringConstant.next,
    ),
    Onboard(
      imagePath: Assets.images.splashScreen2.path,
      title: StringConstant.stayUp,
      description: StringConstant.getTheLast,
      buttonText: StringConstant.next,
    ),
    Onboard(
      imagePath: Assets.images.splashScreen3.path,
      title: StringConstant.enrichYour,
      description: StringConstant.theLast,
      buttonText: StringConstant.getStarted,
    ),
  ];
}
