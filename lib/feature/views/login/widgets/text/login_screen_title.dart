part of '../../login_screen.dart';

class _LoginScreenTitle extends StatelessWidget {
  const _LoginScreenTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringConstant.welcomeBack,
          style: AppStyles.montserratTextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          StringConstant.startExploring,
          style: AppStyles.latoTextStyle(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
