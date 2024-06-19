part of '../../login_screen.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const SocialButton({
    required this.text,
    required this.iconPath,
    this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.asset(iconPath, height: 24),
      label: Text(
        text,
        style: AppStyles.latoTextStyle(
          fontSize: 14,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ColorName.lightOrange,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
    );
  }
}
