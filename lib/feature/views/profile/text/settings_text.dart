part of '../profile_screen.dart';


class _SettingsText extends StatelessWidget {
  const _SettingsText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        StringConstant.settings,
        style: AppStyles.latoTextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
