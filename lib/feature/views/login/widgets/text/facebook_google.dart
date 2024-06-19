part of '../../login_screen.dart';

class _FacebookAndGoogle extends StatelessWidget {
  const _FacebookAndGoogle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SocialButton(
            text: StringConstant.facebook,
            iconPath: Assets.icons.facebook.path,
            backgroundColor: Colors.orange[50],
            onPressed: () {},
          ),
          SizedBox(width: 10),
          SocialButton(
            text: StringConstant.google,
            iconPath: Assets.icons.google.path,
            backgroundColor: Colors.orange[50],
            onPressed: () => LoginViewModel.signInWithGoogle(context),
          ),
        ],
      ),
    );
  }
}
