part of '../../login_screen.dart';

class _FacebookAndGoogle extends StatefulWidget {
  const _FacebookAndGoogle();

  @override
  State<_FacebookAndGoogle> createState() => _FacebookAndGoogleState();
}

class _FacebookAndGoogleState extends State<_FacebookAndGoogle> {
  @override
  Widget build(BuildContext context) {
    final LoginViewModel _viewModel = LoginViewModel();

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
            onPressed: () async {
              bool isSignIn = await _viewModel.signIn(context);
              if (isSignIn)
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
