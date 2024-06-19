part of '../../login_screen.dart';

class _OrSignInWith extends StatelessWidget {
  const _OrSignInWith({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        StringConstant.orSignInWith,
        style: AppStyles.latoTextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
